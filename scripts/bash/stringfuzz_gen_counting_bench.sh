#! /usr/bin/env bash

files_number=500
# 进度条函数
progress_bar() {
    # 进度条的总宽度
    local width=50
    # 已完成的进度
    local done=$(($1 * width / $files_number))
    # 未完成的进度
    local undone=$(($width - $done))
    # 打印进度条
    printf "Progress: #"
    printf "%-${width}s" "$(printf "%${done}s" | sed 's/ /=/g')"
    printf "$(printf "%.1f" $2)%%"
    printf "\r"
}

echo "A simple script to generate the benchmark using stringfuzz. The generated benchmark will be stored in the 'stringfuzz' of current directory."
echo "Start to generate the nested counting benchmark..."
mkdir -p stringfuzz/nested_counting
counter=1
until [ $counter -gt $files_number ]
do 
  stringfuzzg -r -m regex -o tc -O alternating -d 3 -l 5 -u 20 -M 50 -t 4 -D > stringfuzz/nested_counting/nested_counting_$counter.smt2
  progress_bar $counter $(echo "scale=2; $counter*100/$files_number" | bc)
  counter=$((counter+1))
done
printf "\n"   # clear the progress bar
echo "End to generate the nested counting benchmark..."

echo "Start to generate the complement counting benchmark..."
mkdir -p stringfuzz/complement_counting
# 1) 20% benchs are with two regexes both have complement
counter=1
files_number1=$((files_number/5))
until [ $counter -gt $files_number1 ]
do 
  stringfuzzg -r -m regex -o tcu -O alternating -d 3 -l 1 -u 66 -M 50 -t 4 -i not-in -r 2 > stringfuzz/complement_counting/complement_counting_$counter.smt2
  progress_bar $counter $(echo "scale=2; $counter*100/$files_number" | bc)
  counter=$((counter+1))
done
# 2) 80% benchs are with only one regex has complement
files_number2=$((files_number-files_number1))
until [ $counter -gt $files_number ]
do 
  stringfuzzg -r -m regex -o tcu -O alternating -d 3 -l 1 -u 66 -M 50 -t 4 -i alternating -r 2 > stringfuzz/complement_counting/complement_counting_$counter.smt2
  progress_bar $counter $(echo "scale=2; $counter*100/$files_number" | bc)
  counter=$((counter+1))
done
printf "\n"   # clear the progress bar
echo "End to generate the complement counting benchmark..."
