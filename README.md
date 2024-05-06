# About 
The repo is used to generate string constraints based on the regexes from the papers and the internet.

# regex_source
## benchmark-cnt-set-automata
The regexes coming from the OOPSLA'20 paper "**Regex Matching with Counting-Set Automata**".

## benchmark-ca-main
The regexes coming from the USENIX Security'22 paper "**Counting in Regexes Considered Harmful: Exposing ReDoS Vulnerability of Nonbacktracking Matchers**".

## VTLeeLab-LinguaFranca-FSE19-7a763c4
The regexes coming from the FSE'19 paper "**Why Aren’t Regular Expressions a Lingua Franca? An Empirical Study on the Re-use and Portability of Regular Expressions**". Its extracted regexes are stored in `extracted`.

# scripts
## python
The python scripts used to generate string constraints.

- `benchmarks_selected_to_smt2.py` : The script to translate the regexes from `regex_source/benchmarks-ca-main/Benchmarks-selected`.
- `VTEELAb_FSE19_regex_extractor.py` : The script to extract the regexes from the `regex_source/VTLeeLab-LinguaFranca-FSE19-7a763c4` dataset.
- `runner.py` : The multiple threads runner interface.
- `utils.py` : The utility functions. 

## bash
The bash scripts used to generate string constraints.

- `stringfuzz_gen_counting_bench.sh` : The script to generate string constraints with counting operator by stringfuzz.

# reg2script
The tool to translate regexes to string constraints in smtlib2 format.