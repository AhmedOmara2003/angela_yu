// void main() {
//   performTasks();
// }
//
// void performTasks() async {
//   task1();
//   String result = await task2();
//   task3(task2: result);
// }
//
// void task1() {
//   String result = 'perform task 1';
//   print('task1 complete');
// }
//
// // Future<void> task2() async{
// //   String result = 'perform task 2';
// //   await Future.delayed(const Duration(seconds: 4));
// //   print('task2 complete');
// // }
//
// Future<String> task2() async {
//   String? result;
//   // sleep(Duration(seconds: 3));
//   await Future.delayed(
//     Duration(seconds: 3),
//     () {
//       result = 'perform task 2';
//       print('task2 complete');
//     },
//   );
//   return result!;
// }
//
// void task3({required String task2}) {
//   String result = 'perform task 3';
//   print('task3 complete with $task2');
// }

void main() {
  Duck().move();
  Duck().fly();
  Duck ().swim();
}

class Animal {
  void move() {
    print('change position');
  }
}
class Fish extends Animal{
 @override
  void move(){
   super.move();
   print('by swimming');
 }
}
class Bird extends Animal{
 @override
  void move(){
   super.move();
   print('by flying');
 }
}

mixin CanSwim{
  void swim(){
    print('change position by swimming');
  }
}
mixin CanFly{
  void fly(){
    print('change position by flying');
  }
}

class Duck extends Animal with CanSwim, CanFly{

}