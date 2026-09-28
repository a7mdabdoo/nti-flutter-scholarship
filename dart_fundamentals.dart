/*
══════════════════════════════════════════════════════════════════════════════
                 DART FUNDAMENTALS
      Variables • Operators • Conditions • Loops • Functions
══════════════════════════════════════════════════════════════════════════════

هذا الملف مصمم كمرجع تدريبي في Dart.

طريقة الاستخدام:
1) اقرأ الشرح والتعليقات.
2) شغّل كل مثال منفصلًا عند الحاجة.
3) جرّب تعديل القيم بنفسك.
4) نفّذ الـ Assignments الموجودة في نهاية كل Section.
5) لا تنتقل للجزء التالي قبل فهم الجزء الحالي.

يمكن تشغيل الملف باستخدام:
dart dart_fundamentals.dart
*/

// ╔══════════════════════════════════════════════════════════════════════════╗
// ║  1. VARIABLES & DATA TYPES                                               ║
// ╚══════════════════════════════════════════════════════════════════════════╝

void variablesExample() {
  print('\n========== 1. VARIABLES & DATA TYPES ==========');

  // String: لتخزين النصوص
  String name = 'Ibrahim';

  // int: أعداد صحيحة
  int age = 29;

  // double: أعداد عشرية
  double salary = 7500.50;

  // bool: true / false
  bool isStudent = true;

  // num: يمكن أن يحتوي int أو double
  num score = 92;
  num otherScore = 85.5;

  print('Name: $name');
  print('Age: $age');
  print('Salary: $salary');
  print('Is Student: $isStudent');
  print('Score: $score');
  print('Other Score: $otherScore');

  // var:
  // Dart تستنتج نوع المتغير من القيمة عند تعريفه.
  var city = 'Qena';
  var experience = 7;

  print('City: $city');
  print('Experience: $experience');


  // final:
  // يمكن تعيين القيمة مرة واحدة فقط.
  final country = 'Egypt';
  // country = 'USA'; // خطأ
  print('Country: $country');

  // const:
  // قيمة ثابتة وقت الـ compile-time.
  const pi = 3.14159;




  print('PI: $pi');

  // dynamic:
  // يسمح بتغيير نوع القيمة.
  // يفضل عدم استخدامه إلا عند الحاجة.
  dynamic data = 100;
  print('Dynamic data: $data');

  data = 'Hello Dart';
  print('Dynamic data after change: $data');

  // Nullable variable:
  // إذا أردنا السماح بأن تكون القيمة null.
  String? phoneNumber;

  print('Phone: $phoneNumber');

  phoneNumber = '01000000000';
  print('Phone after assignment: $phoneNumber');
}

// ╔══════════════════════════════════════════════════════════════════════════╗
// ║  2. STRING INTERPOLATION                                                 ║
// ╚══════════════════════════════════════════════════════════════════════════╝

void stringExample() {
  print('\n========== 2. STRING INTERPOLATION ==========');

  String name = 'Ahmed';
  int age = 25;

  // String interpolation
  print('My name is $name');

  // يمكن وضع expression داخل ${}
  print('Next year my age will be ${age + 1}');

  String message = 'Hello $name, you are $age years old.';
  print(message);
}

// ╔══════════════════════════════════════════════════════════════════════════╗
// ║  3. INPUT & TYPE CONVERSION                                              ║
// ╚══════════════════════════════════════════════════════════════════════════╝

void conversionExample() {
  print('\n========== 3. TYPE CONVERSION ==========');

  String ageText = '25';
  int age = int.parse(ageText);
  print('Age as String: $ageText');
  print('Age as int: $age');
  String priceText = '99.50';
  double price = double.parse(priceText);

  print('Price: $price');

  // تحويل رقم إلى String
  int number = 100;
  String numberText = number.toString();

  print('Number as String: $numberText');

  // TryParse:
  // مفيد عندما لا نضمن أن النص يحتوي على رقم صحيح.
  String userInput = 'abc';
  int? result = int.tryParse(userInput);

  print('TryParse result: $result');
}

// ╔══════════════════════════════════════════════════════════════════════════╗
// ║  4. OPERATORS                                                            ║
// ╚══════════════════════════════════════════════════════════════════════════╝

void operatorsExample() {
  print('\n========== 4. OPERATORS ==========');

  int a = 10;
  int b = 3;

  // ────────────────────────────────────────────────────────────────────────
  // Arithmetic Operators
  // ────────────────────────────────────────────────────────────────────────

  print('\n--- Arithmetic Operators ---');

  print('a + b = ${a + b}');
  print('a - b = ${a - b}');
  print('a * b = ${a * b}');
  print('a / b = ${a / b}'); // Division -> double
  print('a ~/ b = ${a ~/ b}'); // Integer division
  print('a % b = ${a % b}'); // Remainder

  // ────────────────────────────────────────────────────────────────────────
  // Assignment Operators
  // ────────────────────────────────────────────────────────────────────────

  print('\n--- Assignment Operators ---');

  int x = 10;

  x += 5; // x = x + 5
  print('x += 5 -> $x');

  x -= 3; // x = x - 3
  print('x -= 3 -> $x');

  x *= 2; // x = x * 2
  print('x *= 2 -> $x');

  x ~/= 3; // x = x ~/ 3
  print('x ~/= 3 -> $x');

  // ────────────────────────────────────────────────────────────────────────
  // Comparison Operators
  // ────────────────────────────────────────────────────────────────────────

  print('\n--- Comparison Operators ---');

  print('a == b : ${a == b}');
  print('a != b : ${a != b}');
  print('a > b  : ${a > b}');
  print('a < b  : ${a < b}');
  print('a >= b : ${a >= b}');
  print('a <= b : ${a <= b}');

  // ────────────────────────────────────────────────────────────────────────
  // Logical Operators
  // ────────────────────────────────────────────────────────────────────────

  print('\n--- Logical Operators ---');

  bool isStudent = true;
  bool hasCertificate = false;

  print('AND (&&): ${isStudent && hasCertificate}');

  print('OR  (||): ${isStudent || hasCertificate}');
  print('NOT (!): ${!isStudent}');

  // ────────────────────────────────────────────────────────────────────────
  // Increment / Decrement
  // ────────────────────────────────────────────────────────────────────────

  print('\n--- Increment / Decrement ---');

  int counter = 5;

  counter++;
  print('counter++ -> $counter');

  counter--;
  print('counter-- -> $counter');

  // ────────────────────────────────────────────────────────────────────────
  // Null-aware Operators
  // ────────────────────────────────────────────────────────────────────────

  print('\n--- Null-aware Operators ---');

  String? username;

  // ?? : استخدم القيمة البديلة إذا كانت null
  String displayName = username ?? 'Guest';

  print('Display name: $displayName');

  username = 'Ibrahim';

  displayName = username ?? 'Guest';

  print('Display name: $displayName');

  // ??=
  String? nickname;
  nickname ??= 'Unknown';

  print('Nickname: $nickname');

  // ! : يخبر Dart أن القيمة ليست null.
  String? email = 'ibrahim@example.com';

  print('Email length: ${email!.length}');
}

// ╔══════════════════════════════════════════════════════════════════════════╗
// ║  5. CONDITIONS                                                            ║
// ╚══════════════════════════════════════════════════════════════════════════╝

void conditionsExample() {
  print('\n========== 5. CONDITIONS ==========');

  int age = 20;

  // ────────────────────────────────────────────────────────────────────────
  // if
  // ────────────────────────────────────────────────────────────────────────

  if (age >= 18) {
    print('You are an adult.');
  }

  // ────────────────────────────────────────────────────────────────────────
  // if / else
  // ────────────────────────────────────────────────────────────────────────

  int number = 7;

  if (number % 2 == 0) {
    print('$number is even.');
  } else {
    print('$number is odd.');
  }

  // ────────────────────────────────────────────────────────────────────────
  // if / else if / else
  // ────────────────────────────────────────────────────────────────────────

  int grade = 85;

  if (grade >= 90) {
    print('Excellent');
  } else if (grade >= 80) {
    print('Very Good');
  } else if (grade >= 70) {
    print('Good');
  } else if (grade >= 60) {
    print('Pass');
  } else {
    print('Fail');
  }

  // ────────────────────────────────────────────────────────────────────────
  // Multiple Conditions
  // ────────────────────────────────────────────────────────────────────────

  bool hasEmail = true;
  bool hasPassword = true;

  if (hasEmail && hasPassword) {
    print('Login data is complete.');
  }

  // ────────────────────────────────────────────────────────────────────────
  // Ternary Operator
  // ────────────────────────────────────────────────────────────────────────

  int score = 75;

  String result = score >= 60 ? 'Pass' : 'Fail';

  print('Result: $result');

  // مثال أكثر واقعية
  bool isLoggedIn = true;

  String message = isLoggedIn ? 'Welcome back!' : 'Please login.';

  print(message);

  // ────────────────────────────────────────────────────────────────────────
  // switch
  // ────────────────────────────────────────────────────────────────────────

  String role = 'admin';

  switch (role) {
    case 'admin':
      print('Full access.');
      break;

    case 'teacher':
      print('Teacher access.');
      break;

    case 'student':
      print('Student access.');
      break;

    default:
      print('Unknown role.');
  }
}

// ╔══════════════════════════════════════════════════════════════════════════╗
// ║  6. LOOPS                                                                ║
// ╚══════════════════════════════════════════════════════════════════════════╝

void loopsExample() {
  print('\n========== 6. LOOPS ==========');

  // ────────────────────────────────────────────────────────────────────────
  // for loop
  // ────────────────────────────────────────────────────────────────────────

  print('\n--- for loop ---');

  for (int i = 1; i <= 5; i++) {
    print('i = $i');
  }

  // مثال: حساب مجموع الأرقام
  int sum = 0;

  for (int i = 1; i <= 10; i++) {
    sum += i;
  }

  print('Sum from 1 to 10 = $sum');

  // ────────────────────────────────────────────────────────────────────────
  // while loop
  // ────────────────────────────────────────────────────────────────────────
  print('\n--- while loop ---');

  int counter = 1;

  while (counter <= 5) {
    print('Counter = $counter');
    counter++;
  }

  // ────────────────────────────────────────────────────────────────────────
  // do while
  // ────────────────────────────────────────────────────────────────────────

  print('\n--- do while loop ---');

  int value = 1;

  do {
    print('Value = $value');
    value++;
  } while (value <= 3);

  // ────────────────────────────────────────────────────────────────────────
  // break
  // ────────────────────────────────────────────────────────────────────────

  print('\n--- break ---');

  for (int i = 1; i <= 10; i++) {
    if (i == 6) {
      break;
    }

    print(i);
  }

  // ────────────────────────────────────────────────────────────────────────
  // continue
  // ────────────────────────────────────────────────────────────────────────

  print('\n--- continue ---');

  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      continue;
    }

    print('Odd number: $i');
  }
}

// ╔══════════════════════════════════════════════════════════════════════════╗
// ║  7. FUNCTIONS                                                            ║
// ╚══════════════════════════════════════════════════════════════════════════╝

void functionsExample() {
  print('\n========== 7. FUNCTIONS ==========');

  // Function بدون parameters وبدون return
  sayHello();

  // Function with parameters
  greet('Ahmed');

  // Function returns a value
  int total = add(10, 20);

  print('Total = $total');

  // Function with named parameters
  introducePerson(name: 'Ibrahim', age: 32);

  // Optional named parameter
  calculatePrice(price: 100, discount: 10);

  // Arrow function
  print('Square of 5 = ${square(5)}');
}

// Function بدون parameters
void sayHello() {
  print('Hello Dart!');
}

// Function with parameter
void greet(String name) {
  print('Hello $name');
}

// Function returns int
int add(int a, int b) {
  return a + b;
}

// Named parameters
void introducePerson({required String name, required int age}) {
  print('Name: $name');
  print('Age: $age');
}

// Optional named parameter with default value
void calculatePrice({required double price, double discount = 0}) {
  double finalPrice = price - (price * discount / 100);

  print('Original price: $price');
  print('Discount: $discount%');
  print('Final price: $finalPrice');
}

// Arrow function
int square(int number) => number * number;

// ╔══════════════════════════════════════════════════════════════════════════╗
// ║  8. PRACTICAL MINI EXAMPLE                                               ║
// ╚══════════════════════════════════════════════════════════════════════════╝

void practicalExample() {
  print('\n========== 8. PRACTICAL MINI EXAMPLE ==========');

  String studentName = 'Omar';
  int studentAge = 21;
  double studentScore = 87.5;

  String status;

  if (studentScore >= 90) {
    status = 'Excellent';
  } else if (studentScore >= 80) {
    status = 'Very Good';
  } else if (studentScore >= 70) {
    status = 'Good';
  } else if (studentScore >= 60) {
    status = 'Pass';
  } else {
    status = 'Fail';
  }

  print('Student: $studentName');
  print('Age: $studentAge');
  print('Score: $studentScore');
  print('Status: $status');

  // حساب عدد الدرجات من 1 إلى 5
  print('\nStudy progress:');

  for (int day = 1; day <= 5; day++) {
    print('Day $day: Student studied Dart.');
  }
}

// ╔══════════════════════════════════════════════════════════════════════════╗
// ║  9. MAIN                                                                 ║
// ╚══════════════════════════════════════════════════════════════════════════╝

void main() {
  variablesExample();
  stringExample();
  conversionExample();
  operatorsExample();
  conditionsExample();
  loopsExample();
  functionsExample();
  practicalExample();
}


/*
══════════════════════════════════════════════════════════════════════════════
                              ASSIGNMENTS
══════════════════════════════════════════════════════════════════════════════

IMPORTANT:
حاول حل الـ Assignments بنفسك أولًا، ثم قارن الحل بعد ذلك مع زميلك أو معى فى اللاب.
لا تستخدم AI في أول محاولة إلا لفهم الخطأ بعد المحاولة.
*/


// ╔══════════════════════════════════════════════════════════════════════════╗
// ║ ASSIGNMENT 1 — VARIABLES                                                ║
// ╚══════════════════════════════════════════════════════════════════════════╝

/*
المطلوب:

1. أنشئ المتغيرات التالية:
   - name
   - age
   - height
   - isStudent
   - country

2. اختر الـ Data Type المناسب لكل متغير.

3. اطبع البيانات بالشكل التالي:

   Name: Ahmed
   Age: 22
   Height: 175.5
   Student: true
   Country: Egypt

4. أنشئ متغير final باسم university وضع فيه اسم الجامعة.

5. أنشئ متغير const باسم pi.

BONUS:
أنشئ متغير String? باسم phone وأظهر قيمته عندما تكون null.
*/


// ╔══════════════════════════════════════════════════════════════════════════╗
// ║ ASSIGNMENT 2 — OPERATORS                                                ║
// ╚══════════════════════════════════════════════════════════════════════════╝

/*
لديك:

int price = 500;
int quantity = 3;

المطلوب:

1. احسب Total Price.
2. أضف Discount قيمته 10%.
3. احسب السعر النهائي بعد الخصم.
4. اطبع:
   Original Price
   Quantity
   Total
   Discount
   Final Price

ثم:

5. أنشئ متغيرين a و b.
6. اطبع نتيجة:
   a + b
   a - b
   a * b
   a / b
   a % b

BONUS:
استخدم += و -= و *= في مثال عملي.
*/


// ╔══════════════════════════════════════════════════════════════════════════╗
// ║ ASSIGNMENT 3 — CONDITIONS                                               ║
// ╚══════════════════════════════════════════════════════════════════════════╝

/*
أنشئ برنامجًا لتحديد حالة طالب.

المتغير:

double score = 78;

القواعد:

90 - 100  => Excellent
80 - 89   => Very Good
70 - 79   => Good
60 - 69   => Pass
أقل من 60 => Fail

المطلوب:

1. استخدم if / else if / else.
2. اطبع التقدير.
3. اطبع هل الطالب ناجح أم لا.

BONUS:
أضف شرطًا يمنع الدرجات الأقل من 0 أو الأكبر من 100.
*/


// ╔══════════════════════════════════════════════════════════════════════════╗
// ║ ASSIGNMENT 4 — LOGIN CONDITION                                          ║
// ╚══════════════════════════════════════════════════════════════════════════╝

/*
أنشئ نظام Login بسيط.

المتغيرات:

String email = 'student@gmail.com';
String password = '123456';

المعلومات الصحيحة:

email    = 'student@gmail.com'
password = '123456'

المطلوب:

إذا كان email صحيحًا AND password صحيحًا:
    Login successful

وإلا:
    Invalid email or password

BONUS:
أضف متغير bool isBlocked.

إذا كان المستخدم blocked:
    Account is blocked

وإلا نفذ عملية تسجيل الدخول.
*/


// ╔══════════════════════════════════════════════════════════════════════════╗
// ║ ASSIGNMENT 5 — FOR LOOP                                                 ║
// ╚══════════════════════════════════════════════════════════════════════════╝

/*
المطلوب:

1. اطبع الأرقام من 1 إلى 10 باستخدام for.

2. اطبع الأرقام الزوجية من 1 إلى 20.

3. احسب مجموع الأرقام من 1 إلى 100.

4. اطبع جدول ضرب الرقم 5:

5 x 1 = 5
5 x 2 = 10
...
5 x 10 = 50

BONUS:
اجعل المستخدم قادرًا على تغيير الرقم بدلًا من استخدام 5.
*/


// ╔══════════════════════════════════════════════════════════════════════════╗
// ║ ASSIGNMENT 6 — WHILE LOOP                                               ║
// ╚══════════════════════════════════════════════════════════════════════════╝

/*
أنشئ counter يبدأ من 10.

استخدم while لطباعة:

10
9
8
...
1

ثم:

0

BONUS:
أوقف الـ loop عندما يصل counter إلى 5 باستخدام break.
*/


// ╔══════════════════════════════════════════════════════════════════════════╗
// ║ ASSIGNMENT 7 — FUNCTIONS                                                ║
// ╚══════════════════════════════════════════════════════════════════════════╝

/*
أنشئ Functions للعمليات التالية:

1. add(a, b)
2. subtract(a, b)
3. multiply(a, b)
4. divide(a, b)

كل Function يجب أن:
- تستقبل parameters.
- ترجع result مناسبًا.
- يتم استدعاؤها من main().

مثال:

int add(int a, int b) {
  return a + b;
}

BONUS:
اكتب Function باسم isEven(int number)
وترجع true إذا كان الرقم زوجيًا وfalse إذا كان فرديًا.
*/


// ╔══════════════════════════════════════════════════════════════════════════╗
// ║ ASSIGNMENT 8 — STUDENT SYSTEM                                          ║
// ╚══════════════════════════════════════════════════════════════════════════╝

/*
Mini Project:

أنشئ برنامج Student Grade System.

المطلوب:

1. متغير name.
2. متغير age.
3. 3 درجات:
   math
   programming
   english

4. Function تحسب الـ average.

5. Function تحدد الـ grade:

90+  => A
80+  => B
70+  => C
60+  => D
<60  => F

6. اطبع تقريرًا مثل:

Student: Ahmed
Age: 22

Math: 90
Programming: 85
English: 80

Average: 85
Grade: B
Status: Passed

BONUS:
أضف شرطًا يمنع إدخال درجة خارج النطاق 0 - 100.
*/


// ╔══════════════════════════════════════════════════════════════════════════╗
// ║ FINAL CHALLENGE                                                         ║
// ╚══════════════════════════════════════════════════════════════════════════╝

/*
               DART MINI PROJECT — SIMPLE ATM

أنشئ برنامج ATM بسيط.

المتغيرات:

String userName = 'Ahmed';
String password = '1234';
double balance = 5000;

المطلوب:

1. Login
   - تحقق من username/password.

2. إذا كان Login ناجحًا:
   اعرض Menu:

   1. Check Balance
   2. Deposit
   3. Withdraw
   4. Exit

3. Check Balance:
   اطبع الرصيد الحالي.

4. Deposit:
   أضف مبلغًا إلى balance.

5. Withdraw:
   - لا تسمح بسحب مبلغ أكبر من balance.
   - لا تسمح بمبلغ <= 0.

6. استخدم:
   - Variables
   - Operators
   - Conditions
   - Loops
   - Functions

7. اجعل الـ Menu يتكرر باستخدام loop حتى يختار المستخدم Exit.

 الهدف:
لا تكتب كل شيء داخل main().
قسّم البرنامج إلى Functions صغيرة ومنظمة.

مثال Functions مقترحة:

login()
showMenu()
checkBalance()
deposit()
withdraw()

BONUS:
أضف عدد محاولات Login = 3 فقط.
بعد 3 محاولات خاطئة:
Account is locked.


══════════════════════════════════════════════════════════════════════════════
                              END OF FILE
══════════════════════════════════════════════════════════════════════════════
*/

