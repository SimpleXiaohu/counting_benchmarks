# !bin/bash
make
./reg2smt ../../extracted/cnt/small_regexes.txt -inter -o redos/small
./reg2smt ../../extracted/cnt/large_regexes.txt -inter -o redos/large
./reg2smt ../../extracted/stackoverflow/small_regexes.txt -inter -o stackoverflow/small
./reg2smt ../../extracted/stackoverflow/large_regexes.txt -inter -o stackoverflow/large
./reg2smt ../../extracted/regexlib/small_regexes.txt -inter -o regexlib/small
./reg2smt ../../extracted/regexlib/large_regexes.txt -inter -o regexlib/large