#include <iostream>
using namespace std;
int a[100];
int f(int target) {
	int l = 0;
	int r = 100;
	int m;
	while (l < r) {
		m = (l + r) / 2;
		if (a[m] >= target)
			l = m + 1;
		else
			r = m;
	}
	return l - 1;
}
int main() {
	int i, target;
	cin >> target;
	for (i=0; i<100; i++)
		cin >> a[i];
	cout << f(target) << endl;

	return 0;
}