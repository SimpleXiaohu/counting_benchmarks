import sys, re, argparse, os, json
from runner import RunnerInterface
from dataclasses import dataclass
from utils import regexesCountLine

def isSmallCountRegex(regex: str):
    (isLarge, haveLoop, _) = regexesCountLine(regex)
    return (not isLarge) and haveLoop


def isLargeCountRegex(regex: str):
    (isLarge, _, _) = regexesCountLine(regex)
    return isLarge


def isCountRegex(regex: str):
    (_, haveLoop, _) = regexesCountLine(regex)
    return haveLoop


def getNeededRegexes(regexes: 'list[str]', large):
    if large:
        return list(filter(isLargeCountRegex, regexes))
    else:
        return list(filter(isSmallCountRegex, regexes))


@dataclass
class TxtExtractor(RunnerInterface):
    extension: str = "txt"
    large: bool = True

    def write_results(self, results: "list[str]"):
        resfile_prefix = "large" if self.large else "small"
        with open(os.path.join(self.outdir, f"{resfile_prefix}_regexes.txt"), "w", encoding="ascii") as f:
            for result in results:
                f.write(f"{result}{os.linesep}")

    def run_single_instance(self, benchmark: str):
        regexes = []
        REGEX_RE = re.compile(r"^\"(.*)\";.*")
        with open(benchmark, "r", encoding="utf8") as f:
            lines = f.readlines()
            for line in lines:
                if REGEX_RE.match(line):
                    regexes.append(REGEX_RE.match(line).group(1))
        return "\n".join(getNeededRegexes(set(regexes), large=self.large))
@dataclass
class TxtExtractorLarge(TxtExtractor):
    large: bool = True

@dataclass
class TxtExtractorSmall(TxtExtractor):
    large: bool = False

@dataclass
class JsonExtractor(TxtExtractor):
    extension: str = "json"

    def run_single_instance(self, benchmark: str):
        regexes = []
        with open(benchmark, "r") as f:
            lines = f.readlines()
            for line in lines:
                onedata = json.loads(line)
                for pattern in onedata["patterns"]:
                    regexes.append(pattern.encode("ascii", "ignore").decode("ascii"))
        return "\n".join(getNeededRegexes(set(regexes), large=self.large))

@dataclass
class JsonExtractorLarge(JsonExtractor):
    large: bool = True

@dataclass
class JsonExtractorSmall(JsonExtractor):
    large: bool = False

dirname = os.path.dirname(__file__)
# parse argument
argparser = argparse.ArgumentParser(
    prog=__file__,
    description="Extract benchmark of specific types from the log file. The types is a list and can be unknown, timeout or error",
)
argparser.add_argument(
    "--format",
    help="format of the regex benchmarks",
    metavar="json|txt",
    choices=["txt", "json"],
)

argparser.add_argument(
    "--subdirname",
    default="",
    help="name of the subdirectory where the regexes will be stored",
    metavar="string",
)


argparser.add_argument("bench")

args = argparser.parse_args()

extract_dir = os.path.join(dirname, f"../extracted", args.subdirname)
os.makedirs(extract_dir, exist_ok=True)

if args.format == "txt":
    TxtExtractorLarge(args.bench, 1, extract_dir).run()
    TxtExtractorSmall(args.bench, 1, extract_dir).run()
elif args.format == "json":
    JsonExtractorLarge(args.bench, 1, extract_dir).run()
    JsonExtractorSmall(args.bench, 1, extract_dir).run()
else:
    print("Error: no format specified. Use --format to specify the format of the regex benchmarks")
    sys.exit(1)
