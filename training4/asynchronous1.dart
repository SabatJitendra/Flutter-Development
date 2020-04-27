import 'dart:io';

void main() {
  executeTasks();
}

void executeTasks() async {
  execTask1();
  var myName = await execTask2();
  execTask3(myName);
}

void execTask1() {
  print('Task 1 executed');
}

Future<String> execTask2() async {
  String name;
  await Future.delayed(Duration(seconds: 3), () {
    name = 'Jitendra';
    print('Task 2 executed');
  });
  return name;
}

void execTask3(myName) {
  print('Task 3 executed $myName');
}
