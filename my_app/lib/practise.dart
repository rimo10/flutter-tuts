import 'dart:io';

void main() {
  print('Welcome to Dart');
  stdout.write('Enter your name:');
  var name = stdin.readLineSync();
  print("welcome, $name");
  for (int i = 0; i < 5; i++) {
    print('hello, $name');
  }
  new Human();
}

class Human {
  Human() {
    print("Hello");
  }
}
