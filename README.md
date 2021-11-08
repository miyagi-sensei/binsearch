# Binary Search Practice Tooling
1. `in1.txt` to `in6.txt`: 6 edge test cases for data sorted in *descending* order
2. `in1b.txt` to `in6b.txt`: 6 edge test cases for data sorted in *ascending* order
3. `brute.cpp`: trivial brute force linear version that you know is correct
4. `solution.cpp`: write the binary search implementation
5. `stress.sh`: shell script to test for data sorted in *descending* order
6. `bstress.sh`: shell script to test for data sorted in *ascending* order

## How to use:
1. Download the folder to your own drive or to a replit folder.
2. At command line, `chmod +x stress.sh` and `chmod +x bstress.sh` so that the scripts are executable.
3. Define a search problem such as: Suppose `a[]` is sorted in descending order. Return the largest `i` for all `a[i] >= target`.
4. Modify `brute.cpp` so that it does what you defined. `target` is the first input. The next 100 inputs are the numbers sorted in descending order (or ascending order if you so defined).
5. Try to implement the binary search solution in `solution.cpp`.
6. Run `./stress.sh` (or `bstress.sh` if the data are supposed to be in *ascending* order) and see if it's correct.
