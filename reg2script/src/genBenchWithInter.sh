# !bin/bash

./reg2smt ../../extracted/cnt/small_regexes.txt -inter -o cnt_small
./reg2smt ../../extracted/cnt/large_regexes.txt -inter -o cnt_large
./reg2smt ../../extracted/stackoverflow/small_regexes.txt -inter -o stackoverflow_small
./reg2smt ../../extracted/stackoverflow/large_regexes.txt -inter -o stackoverflow_large
./reg2smt ../../extracted/regexlib/small_regexes.txt -inter -o regexlib_small
./reg2smt ../../extracted/regexlib/large_regexes.txt -inter -o regexlib_large