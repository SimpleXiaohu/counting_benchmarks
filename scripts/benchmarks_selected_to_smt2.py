# Input: benchmarks-ca-main/Benchmarks-selected
# Output: nested and non-nested directory containing responsible smt2 files. For example, the regex coming from bench1-above.txt will be stored in non-nested/above/bench1/instancexxx.smt2, and the regex coming from bench1-nested-between.txt will be stored in nested/between/bench1/instancexxx.smt2

from runner import RunnerInterface
from dataclasses import dataclass
import argparse, os

@dataclass
class smt2Translator(RunnerInterface):
  instance_count: int = 0

  def __post_init__(self) -> None:
    super().__post_init__()
    self.non_nested_above = os.path.join(self.outdir, "non-nested", "above")
    self.non_nested_between = os.path.join(self.outdir, "non-nested", "between")
    self.non_nested_tobig = os.path.join(self.outdir, "non-nested", "toobig")
    self.nested_above = os.path.join(self.outdir, "nested", "above")
    self.nested_between = os.path.join(self.outdir, "nested", "between")
    self.nested_tobig = os.path.join(self.outdir, "nested", "toobig")
    # os.makedirs(self.non_nested_above, exist_ok=True)
    # os.makedirs(self.non_nested_between, exist_ok=True)
    # os.makedirs(self.non_nested_tobig, exist_ok=True)
    # os.makedirs(self.nested_above, exist_ok=True)
    # os.makedirs(self.nested_between, exist_ok=True)
    # os.makedirs(self.nested_tobig, exist_ok=True)


  def run_single_instance(self, filename: str):
    self.instance_count += 1
    print(f"Processing {filename}, instance count {self.instance_count}")

    filename_without_extension = os.path.splitext(os.path.basename(filename))[0]
    filename_split = filename_without_extension.split("-")
    regextype = "nested" if "nested" in filename_split else "non-nested"
    bounding_range = filename_split[-1] # above, between, toobig
    benchname = filename_split[0]
    outdir = os.path.join(self.outdir, regextype, bounding_range, benchname)
    reg2smt2_cmd = f"{os.path.join(basedir, '../reg2script/src/reg2smt')} {filename}  -inter -o {outdir}"
    print(reg2smt2_cmd)
    

argparser = argparse.ArgumentParser(prog=__file__, description="Translate benchmarks from txt to smt2")
argparser.add_argument("bench")
basedir = os.path.dirname(__file__)
default_outdir = os.path.join(basedir, "../benchmarks_ca_main_smt2/")
print(basedir)
argparser.add_argument("--outdir", help="Output directory for the translated files", default=default_outdir)

args = argparser.parse_args()


smt2Translator(benchdir=args.bench, proccess_num=1, outdir=args.outdir, extension="txt").run()