import re
import os
from runner import Runner, ArgParser
from dataclasses import dataclass
from util import regexesCount

@dataclass
class Counter(Runner):
    extension: str = "txt"

    def run_single_instance(self, benchmark: str) -> str:
        regexesCount(benchmark)
        return ""


class CountArgParser(ArgParser):
    def __init__(self) -> None:
        self.scriptname = __file__
        super().__init__()


argparser = CountArgParser()
argparser.parse_args()

dirname = os.path.dirname(__file__)
extract_dir = os.path.join(dirname, f"../regex_count_res")
os.makedirs(extract_dir, exist_ok=True)
outfile = os.path.join(extract_dir, "count.txt")
Counter(argparser.bench, outfile).run()
