import 'dart:io';

void main() {
  print("=== Simple Dart Calculator ===");

  // Ask for first number
  stdout.write("Enter first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  // Ask for operator
  stdout.write("Enter operator (+, -, *, /): ");
  String op = stdin.readLineSync()!;

  // Ask for second number
  stdout.write("Enter second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  double result;

  // Perform calculation
  switch (op) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 == 0) {
        print("Error: Division by zero is not allowed.");
        return;
      }
      result = num1 / num2;
      break;
    default:
      print("Invalid operator.");
      return;
  }

  // Show result
  print("Result: $num1 $op $num2 = $result");
}