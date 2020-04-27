import 'dart:io';

void main() {
  executeTasks();
}

void executeTasks() {
  execTask1();
  execTask2();
  execTask3();
}

void execTask1() {
  print('Task 1 executed');
}

void execTask2() {
  sleep(
    //synchronous programming
    Duration(seconds: 3),
  );
  print('Task 2 executed');
}

void execTask3() {
  print('Task 3 executed');
}
