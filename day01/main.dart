import 'human.dart';
void main(){
  print("Hello World");
  Human ahmed = Human(name:"ahmed",age: 20,height: 120);
  print(ahmed.name);
  print(ahmed.age);
  print(ahmed.height);
  ahmed.numberOfHands=3;
  print (ahmed.numberOfHands);
}
