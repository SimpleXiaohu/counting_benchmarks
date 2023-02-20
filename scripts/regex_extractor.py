import sys
import re
import argparse
import os
import shutil
from datetime import datetime
from runner import Runner, ArgParser
import json
from dataclasses import dataclass
from util import regexesCountLine


class ScriptArgParser(ArgParser):
    def __init__(self) -> None:
        self.scriptname = __file__
        super().__init__()
        self.parser.add_argument(
            "--format",
            help="format of the regex benchmarks",
            metavar="json|txt",
            choices=["txt", "json"],
        )

        self.parser.add_argument(
            "--subdirname",
            default="",
            help="name of the subdirectory where the regexes will be stored",
            metavar="string",
        )

        self.parser.add_argument(
            "--loop-count",
            help="the sum of the loop counts should satisfy this condition",
            default="all",
            metavar="large|small|all",
            choices=["large", "small", "all"],
        )


def isSmallCountRegex(regex: str):
    (isLarge, haveLoop, _) = regexesCountLine(regex)
    return (not isLarge) and haveLoop


def isLargeCountRegex(regex: str):
    (isLarge, _, _) = regexesCountLine(regex)
    return isLarge


def isCountRegex(regex: str):
    (_, haveLoop, _) = regexesCountLine(regex)
    return haveLoop


def getNeededRegexes(regexes: 'list[str]'):
    if argparser.loop_count == "large":
        return list(filter(isLargeCountRegex, regexes))
    elif argparser.loop_count == "small":
        return list(filter(isSmallCountRegex, regexes))
    else:
        return list(filter(isCountRegex, regexes))


@dataclass
class TxtExtractor(Runner):
    extension: str = "txt"

    def run_single_instance(self, benchmark: str):

        regexes = []
        REGEX_RE = re.compile(r"^\"(.*)\";.*")

        with open(benchmark, "r") as f:
            lines = f.readlines()
            for line in lines:
                if REGEX_RE.match(line):
                    regexes.append(REGEX_RE.match(line).group(1))
        return "\n".join(getNeededRegexes(set(regexes)))


@dataclass
class JsonExtractor(Runner):
    extension: str = "json"

    def run_single_instance(self, benchmark: str):
        regexes = []
        with open(benchmark, "r") as f:
            lines = f.readlines()
            for line in lines:
                onedata = json.loads(line)
                for pattern in onedata["patterns"]:
                    regexes.append(pattern)
        return "\n".join(getNeededRegexes(set(regexes)))


dirname = os.path.dirname(__file__)
argparser = ScriptArgParser()
argparser.parse_args()
extract_dir = os.path.join(dirname, f"../extracted", argparser.subdirname)
os.makedirs(extract_dir, exist_ok=True)
outfile = os.path.join(extract_dir, f"{argparser.loop_count}_regexes.txt")

if argparser.format == "txt":
    TxtExtractor(argparser.bench, outfile).run()
elif argparser.format == "json":
    JsonExtractor(argparser.bench, outfile).run()
else:
    print("Error: no format specified. Use --format to specify the format of the regex benchmarks")
    sys.exit(1)
