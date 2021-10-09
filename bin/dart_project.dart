import 'dart:math' as math;

void main(List<String> args) {
  int min = -1, max = 2;

  int value = min + math.Random().nextInt(max - min);
  print('Random value: $value');

  try {
    if (value < 0) {
      throw NegativeValue(message: 'Negative value');
    } else if (value > 0) {
      throw PositiveValue(message: 'Positive value');
    }
  } on NegativeValue {
    print('The value is negative');
  } catch (e) {
    if (e is PositiveValue) {
      print('The value is positive');
    }
  } finally {
    value = 0;
  }
  if (value == 0) {
    print('value at the end: $value');
  }
}

class NegativeValue implements Exception {
  final String message;
  NegativeValue({required this.message});
}

class PositiveValue implements Exception {
  final String message;
  PositiveValue({required this.message});
}


// void main() {
//   int vi = 5;
//   var vs = 'Example';
//   var vl = [1, 2, 3];
//   var vm = {'name': 'john', 'age': 24};
//   print(vi.runtimeType);
//   print(vs.runtimeType);
//   print(vl.runtimeType);
//   print(vm.runtimeType);
//   driveTwoSeatedCar('John', 'Paul');

//   List<int> list = [1, 2, 3];
//   list.forEach(print);

//   List<int> list1 = [1, 0, 2];
//   list1.sort();
//   list1 = list1.reversed.toList();
//   list1.addAll([5, 3, 4]);
//   list1.sort();
//   list1 = list1.map((e) => e + 1).toList();
//   print(list1);

//   List<int> list2 = [1, 0, 2]
//     ..sort()
//     ..reversed
//     ..addAll([5, 3, 4])
//     ..sort()
//     ..map((e) => e + 1);
//   print(list2);

//   Runes runes = Runes('John');
//   print(runes);
// }

// void driveTwoSeatedCar(String driver, [String? passenger]) {
//   if (passenger != null) {
//     print('$driver cruises with $passenger today!');
//   } else {
//     print('$driver will cruise alone today!');
//   }
// }

// void main(List<String> args) {
//   print('Hello');
//   for (var i = 0; i < 5; i++) {
//     print('Hello, but in for!');
//   }
//   print('Hello');
// }



