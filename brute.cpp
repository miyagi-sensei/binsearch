#include <iostream>
using namespace std;
int a[100];
int f(int target) {
	int i;
	for (i=0; i<100; i++)
		if (a[i] < target)
			break;
	return i-1;
}
int main() {
	int i, target;
	cin >> target;
	for (i=0; i<100; i++)
		cin >> a[i];
	cout << f(target) << endl;

	return 0;
}