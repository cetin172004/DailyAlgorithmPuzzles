/*

Puzzle 1:
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
	
	if (!list.isEmpty) {
		List<int> targetList = [list[0]];

		int sum = list[0];

		for (int i = 1; i < list.length; i++) {
			sum += list[i];
			targetList.add(sum);
		}

		return targetList;
	}
	
	else {
		return [];
	}

}
