import 'dart:io';

void main() async {
  String currentPath = Directory.current.path;
  final input = await File('$currentPath/input.txt').readAsLines();

  final list = getList(input);
  print(findDistance(list));
}

List<List<int>> getList(List<String> input) {
  List<int> left = [];
  List<int> right = [];

  for ( int i=0 ; i < input.length ; i++ ){
    final line = input[i];
    final numList = line.split('   ');
    left.add(int.parse(numList[0]));
    right.add(int.parse(numList[1]));

  }
  left.sort();
  right.sort();
  return [left, right];
}

int findDistance(List<List<int>> input) {
  List<int> left = input[0];
  List<int> right = input[1];
int distance =0;
for (int i=0; i<left.length; i++){
distance += (right[i] - left[i]).abs();
}
return distance;
}
