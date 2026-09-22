import 'dart:io';

void main() {
  // int x=15;
  // int y=10;
  // print(x+y);
  //
  // String name="Ahmed";
  // int age=19;
  // double GPA=3.5;
  // print("My name is $name and my age is $age and my GPA is $GPA");
  // print (name + " " + age.toString() + " " + GPA.toString());
  //

  var name = "Ahmed";
  var age = 19;
  var GPA = 3.5;
  print("My name is $name and my age is $age and my GPA is $GPA");
  print(name + " " + age.toString() + " " + GPA.toString());

  // operators

  // 1- Arithmetic operators

  // int x=15;
  // int y=10;
  // print (x+y);
  // print (x-y);
  // print (x*y);
  // print (x/y);
  // print (x%y);

  // 2- Assignment operators
  // int x=15;
  // int y=10;
  // x+=y;
  // print (x);
  // x-=y;
  // print (x);

  // 3- logical operators
  // bool a=true;
  // bool b=false;
  // print (a && b);
  // print (a || b);
  // print (!a);

  // 4- Comparison operators
  // int x=15;
  // int y=10;
  // print (x==y);
  // print (x!=y);
  // print (x>y);
  // print (x<y);
  // print (x<=y);

  // casting
  var m = 10;
  print(m.toDouble());

  // conditions
  // var salary=1000;
  // var bonus=200;
  // var totalSalary=salary+bonus;
  // double tax=0;
  // if(totalSalary>1000){
  //   tax = totalSalary*0.1;
  //   totalSalary -= tax.toInt();
  // }
  // else if (totalSalary>500){
  //   tax = totalSalary*0.05;
  //   totalSalary -= tax.toInt();
  // }
  // print(totalSalary);
  // print(tax);

  double grade = double.parse(stdin.readLineSync()!);
  if (grade >= 85 && grade <= 100) {
    print("A");
  } else if (grade >= 75) {
    print("B");
  } else if (grade >= 65) {
    print("C");
  } else if (grade >= 50) {
    print("D");
  } else {
    print("F");
  }
  print("\n");

}
