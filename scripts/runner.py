from multiprocessing.dummy import Pool
import os
import glob
import subprocess
from tqdm import tqdm
from time import time
from dataclasses import dataclass, field

timelimit = 60


@dataclass
# Interface to mutithreadingly run each file of a benchmark directory.
# The file extension should be specified.
class RunnerInterface:
    benchdir: str
    proccess_num: int
    outdir: str
    extension: str

    def __post_init__(self) -> None:
        self.benchmarks = glob.glob(
            f"{self.benchdir}/**/*{self.extension}", recursive=True
        )
        self.pbar = tqdm(total=len(self.benchmarks))

    def write_results(self, results: "list[str]"):
        pass

    def run_with_pbar_update(self, filename: str):
        self.pbar.update(1)
        return self.run_single_instance(filename)

    def run_single_instance(self, filename: str):
        pass

    def run(self):
        with Pool(processes=self.proccess_num) as pool:
            results = pool.map(
                self.run_with_pbar_update,
                self.benchmarks,
                chunksize=int(len(self.benchmarks) / self.proccess_num),
            )
            self.write_results(results)
        self.pbar.close()