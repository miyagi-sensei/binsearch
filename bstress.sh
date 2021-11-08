#!/bin/bash

# solution.cpp          solution you want to stress test
# brute.cpp/correct.py    correct solution for the problem
# gen.py                generates a new random test case for the problem

# compile all programs first
g++ solution.cpp
g++ brute.cpp -o brute

# edge case tests
for i in {1..6}; do
	./a.out < in${i}b.txt > out
	./brute < in${i}b.txt > out_correct
	if ! cmp -s out out_correct
	then
		echo "failed test ${i}!"
		exit 0
	fi	
	echo "test ${i} OK!"
done

# more random testing
while true 
do
	python3 gen.py > in
	./a.out < in > out
	# python3 correct.py < in > out_correct
	./brute < in > out_correct
	if ! cmp -s out out_correct
	then
		echo "failed test"
		exit 0
	fi
	echo "OK!"
done