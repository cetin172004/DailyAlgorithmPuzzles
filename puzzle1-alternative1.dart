/*

Puzzle 1 - Alternative 1:
Write a Dart function that takes a list of integers and returns
a new list where each number is replaced by the sum of itself and
all previous numbers in the list. This is sometimes called a
cumulative sum.

Example:
	Input: [1, 2, 3, 4]
	Output: [1, 3, 6, 10]
	// Explanation: 
	// 1 -> 1
	// 1 + 2 = 3
	// 1 + 2 + 3 = 6
	// 1 + 2 + 3 + 4 = 10


SEE MORE: https://github.com/cetin172004

*/

void main() {
	List<int> x = [1, 2, 3, 4, 5];
	List<int> y = [1, 1, 1, 2, 1];
	List<int> z = [10];
	List<int> t = [];
	
	print(sumUpToNow(x));
	print(sumUpToNow(y));
	print(sumUpToNow(z));
	print(sumUpToNow(t));
}

List<int> sumUpToNow(List<int> list) {

	if (list.isEmpty) return [];

	List<int> finalList = [];
	int sum = 0;

	list.forEach((number) {
		sum += number;
		finalList.add(sum);
	});

	return finalList;
}
