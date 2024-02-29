# Input: benchmarks-ca-main/Benchmarks-selected
# Output: nested and non-nested directory containing responsible smt2 files. For example, the regex coming from bench1-above.txt will be stored in non-nested/above/bench1/instancexxx.smt2, and the regex coming from bench1-nested-between.txt will be stored in nested/between/bench1/instancexxx.smt2

from runner import RunnerInterface
from dataclasses import dataclass
import argparse, os, subprocess

@dataclass
class smt2Translator(RunnerInterface):

  def run_single_instance(self, filename: str):
    print(f"Processing {filename}")

    filename_without_extension = os.path.splitext(os.path.basename(filename))[0]
    filename_split = filename_without_extension.split("-")
    regextype = "nested" if "nested" in filename_split else "non-nested"
    bounding_range = filename_split[-1] # above, between, toobig
    lenbound = "100" if bounding_range == "between" else "500"
    benchname = filename_split[0]
    outdir = os.path.join(self.outdir, regextype, bounding_range, benchname)
    reg2smt2_cmd = f"{os.path.join(basedir, '../reg2script/src/reg2smt')} {filename}  -inter -o {outdir} -lenbound {lenbound}"
    subprocess.run(reg2smt2_cmd, shell=True)
    

argparser = argparse.ArgumentParser(prog=__file__, description="Translate benchmarks from txt to smt2")
argparser.add_argument("bench")
basedir = os.path.dirname(__file__)
default_outdir = os.path.join(basedir, "../benchmarks_ca_main_smt2/")
print(basedir)
argparser.add_argument("--outdir", help="Output directory for the translated files", default=default_outdir)

args = argparser.parse_args()

smt2Translator(benchdir=args.bench, proccess_num=1, outdir=args.outdir, extension="txt").run()