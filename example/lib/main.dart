import 'dart:html';

import 'package:functional/functional.dart';

int add(int a, int b) => a + b;

String toUpperCase(String s) => s.toUpperCase();

Stream<int> generate(int start, int end, Duration duration) async* {
  for (int i = start; i <= end; i++) {
    yield i;
    await Future.delayed(duration);
  }
}

void main() {
  // Currying
  final inc = add % 1;
  final dec = add % -1;

  print(inc(5)); // Same as add(1, 5);
  print(dec(5)); // Same as add(-1, 5);

  // Function Piping

  final convertToUppercaseAndPrint = toUpperCase | print;
  convertToUppercaseAndPrint('Hello');
  // Same as print(toUpperCase('Hello'));

  // Collection Piping

  [1, 2, 3, 4, 5, 6] | print;
  // Same as [1, 2, 3, 4, 5, 6].forEach((int value) => print(value));

  final incrementedList = [1, 2, 3, 4, 5, 6] ^ inc;
  // Same as [1, 2, 3, 4, 5, 6].map((int value)=> inc(value));

  print(incrementedList);
  // Will print : (2, 3, 4, 5, 6, 7)

  incrementedList | print;
  /* Will print : 
     2
     3
     4
     5
     6
     7
  */

  // Stream piping

  final stream = generate(1, 9, Duration(seconds: 1));
  final subscription = stream | print;
}
