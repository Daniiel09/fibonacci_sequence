import 'dart:io';

void main() {
  print("Digite a quantidade de elementos para sua lista: \n");
  String? listLength = stdin.readLineSync();

  if (isNumeric(listLength)) {
    print(createFibonacciList(int.parse(listLength!)));
  } else {
    print('Número inválido!');
  }
}

List<int> createFibonacciList(int listSize,
    [List<int> fibonacciList = const []]) {
  if (fibonacciList.isEmpty) {
    var newFibonacciList = [0, 1];
    return createFibonacciList(listSize, newFibonacciList);
  } else {
    int secondToLastValue = fibonacciList[fibonacciList.length - 2];
    int lastValue = fibonacciList[fibonacciList.length - 1];
    fibonacciList.add(secondToLastValue + lastValue);
  }

  if (fibonacciList.length < listSize) {
    return createFibonacciList(listSize, fibonacciList);
  } else {
    return fibonacciList;
  }
}

bool isNumeric(String? input) => input != null && int.tryParse(input) != null;
