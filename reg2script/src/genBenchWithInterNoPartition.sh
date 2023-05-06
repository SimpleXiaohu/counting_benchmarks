# !bin/bash
make
./reg2smt ../../extracted/cnt/small_regexes.txt -inter -o generated
./reg2smt ../../extracted/cnt/large_regexes.txt -inter -o generated
./reg2smt ../../extracted/stackoverflow/small_regexes.txt -inter -o generated
./reg2smt ../../extracted/stackoverflow/large_regexes.txt -inter -o generated
./reg2smt ../../extracted/regexlib/small_regexes.txt -inter -o generated
./reg2smt ../../extracted/regexlib/large_regexes.txt -inter -o generated