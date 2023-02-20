# !bin/bash

./reg2smt ../../extracted/cnt/small_regexes.txt -o cnt_small
./reg2smt ../../extracted/cnt/large_regexes.txt -o cnt_large
./reg2smt ../../extracted/stackoverflow/small_regexes.txt -o stackoverflow_small
./reg2smt ../../extracted/stackoverflow/large_regexes.txt -o stackoverflow_large
./reg2smt ../../extracted/regexlib/small_regexes.txt -o regexlib_small
./reg2smt ../../extracted/regexlib/large_regexes.txt -o regexlib_large