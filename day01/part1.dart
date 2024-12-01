import 'dart:io';

void main() async {
  String currentPath = Directory.current.path;
  final input = await File('$currentPath/input.txt').readAsLines();

  final list = getList(input);
  print(list[0][0]);
  print(list[1][0]);
  solvePart2(input);
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
  return [left, right];
}

void solvePart2(List<String> input) {
  print('Part 2 result:');
}
