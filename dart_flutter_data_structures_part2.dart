/*
DART & FLUTTER — PART 2
DATA STRUCTURES & COLLECTIONS

Topics:
1. Data Structures
2. List
3. Set
4. Map
5. Queue
6. Stack
7. Collection methods
8. Spread / collection-if / collection-for
9. Records
10. Enum
11. Classes & Models
12. List of Objects
13. JSON-like data
14. fromJson / toJson
15. Flutter data flow
16. Search / Filter / Sort
17. Mini Project
18. Test Questions
*/

import 'dart:collection';


// ============================================================
// 1. WHAT IS A DATA STRUCTURE?
// ============================================================

/*
Data Structure = طريقة لتنظيم وتخزين البيانات.

أشهر الاختيارات:

List  -> بيانات مرتبة + index + التكرار مسموح.
Set   -> عناصر Unique بدون تكرار.
Map   -> Key / Value.
Queue -> FIFO: أول عنصر يدخل يخرج أولًا.
Stack -> LIFO: آخر عنصر يدخل يخرج أولًا.

في Flutter ستستخدمها مع:
- API
- JSON
- ListView / GridView
- Search
- Filter
- State Management
*/

void introductionExample() {
  List<String> students = ['Ahmed', 'Mona', 'Ali'];

  Set<String> skills = {'Dart', 'Flutter', 'Python'};

  Map<String, dynamic> user = {
    'name': 'Ibrahim',
    'age': 32,
  };

  print('\n=== 1. DATA STRUCTURES ===');
  print('List: $students');
  print('Set: $skills');
  print('Map: $user');
}


// ============================================================
// 2. LIST
// ============================================================

/*
List:
- Ordered.
- تسمح بالتكرار.
- تبدأ من index = 0.

Common methods:
add
addAll
insert
insertAll
remove
removeAt
removeLast
contains
sort
sublist
*/

void listExample() {
  print('\n=== 2. LIST ===');

  List<String> names = ['Ahmed', 'Mona', 'Ali'];

  print('First: ${names[0]}');
  print('Last: ${names[names.length - 1]}');

  names.add('Omar');
  names.addAll(['Sara', 'Youssef']);

  names.insert(1, 'Khaled');
  names.insertAll(2, ['Hana', 'Noor']);

  names[0] = 'Ahmed Ali';

  names.remove('Mona');
  names.removeAt(0);
  names.removeLast();

  print('List: $names');
  print('Contains Ali? ${names.contains('Ali')}');
  print('Length: ${names.length}');
  print('Is empty? ${names.isEmpty}');

  names.sort();
  print('Sorted: $names');

  print('Reversed: ${names.reversed.toList()}');

  if (names.length >= 2) {
    print('Sublist: ${names.sublist(0, 2)}');
  }
}


// ============================================================
// 3. LIST METHODS: forEach / map / where / reduce / fold
// ============================================================

void listMethodsExample() {
  print('\n=== 3. LIST METHODS ===');

  List<int> numbers = [1, 2, 3, 4, 5, 6];

  print('forEach:');
  numbers.forEach((number) => print(number));

  // map: يحول كل عنصر إلى قيمة جديدة.
  List<int> doubled = numbers
      .map((number) => number * 2)
      .toList();

  print('map: $doubled');

  // where: يختار العناصر التي تحقق شرطًا.
  List<int> even = numbers
      .where((number) => number % 2 == 0)
      .toList();

  print('where: $even');

  int firstGreaterThan3 = numbers.firstWhere(
    (number) => number > 3,
  );

  print('firstWhere: $firstGreaterThan3');

  bool hasEven = numbers.any(
    (number) => number % 2 == 0,
  );

  bool allPositive = numbers.every(
    (number) => number > 0,
  );

  print('any: $hasEven');
  print('every: $allPositive');

  int sum = numbers.reduce((a, b) => a + b);

  print('reduce sum: $sum');

  int sumStartingAt100 = numbers.fold(
    100,
    (previous, current) => previous + current,
  );

  print('fold: $sumStartingAt100');

  print('take: ${numbers.take(3).toList()}');
  print('skip: ${numbers.skip(3).toList()}');

  List<dynamic> mixed = [1, 'Dart', 2, 'Flutter'];

  print(
    'whereType<int>: ${mixed.whereType<int>().toList()}',
  );
}


// ============================================================
// 4. SET
// ============================================================

/*
Set:
- Unique values.
- لا يوجد تكرار.
- ممتاز للـ membership checking.
*/

void setExample() {
  print('\n=== 4. SET ===');

  Set<String> skills = {
    'Dart',
    'Flutter',
    'Python',
    'Dart',
  };

  print('Skills: $skills');

  skills.add('AI');
  skills.add('AI'); // لن يضاف مرة ثانية.

  skills.remove('Python');

  print('After changes: $skills');
  print('Contains Flutter? ${skills.contains('Flutter')}');

  List<int> numbers = [1, 2, 2, 3, 3, 4];

  Set<int> uniqueNumbers = numbers.toSet();

  print('Unique: $uniqueNumbers');
}


// ============================================================
// 5. SET OPERATIONS
// ============================================================

void setOperationsExample() {
  print('\n=== 5. SET OPERATIONS ===');

  Set<int> a = {1, 2, 3, 4};
  Set<int> b = {3, 4, 5, 6};

  print('Union: ${a.union(b)}');
  print('Intersection: ${a.intersection(b)}');
  print('A - B: ${a.difference(b)}');
  print('B - A: ${b.difference(a)}');
}


// ============================================================
// 6. MAP
// ============================================================

/*
Map = Key -> Value

مهم جدًا في:
- JSON
- API
- configuration
- key/value data
*/

void mapExample() {
  print('\n=== 6. MAP ===');

  Map<String, dynamic> user = {
    'name': 'Ahmed',
    'age': 25,
    'isStudent': true,
  };

  print('Name: ${user['name']}');
  print('Age: ${user['age']}');

  user['city'] = 'Cairo';
  user['age'] = 26;

  user.remove('isStudent');

  print('Map: $user');
  print('Keys: ${user.keys}');
  print('Values: ${user.values}');
  print('Has name? ${user.containsKey('name')}');
  print('Has Cairo? ${user.containsValue('Cairo')}');

  user.forEach((key, value) {
    print('$key => $value');
  });
}


// ============================================================
// 7. MAP METHODS
// ============================================================

void mapMethodsExample() {
  print('\n=== 7. MAP METHODS ===');

  Map<String, int> prices = {
    'Laptop': 30000,
    'Phone': 15000,
    'Tablet': 10000,
  };

  prices.update(
    'Phone',
    (oldPrice) => oldPrice + 1000,
  );

  prices.putIfAbsent(
    'Watch',
    () => 5000,
  );

  print(prices);

  for (final entry in prices.entries) {
    print('${entry.key}: ${entry.value}');
  }
}


// ============================================================
// 8. NESTED DATA STRUCTURES
// ============================================================

void nestedDataExample() {
  print('\n=== 8. NESTED DATA ===');

  Map<String, dynamic> student = {
    'name': 'Ahmed',
    'age': 21,
    'skills': ['Dart', 'Flutter', 'Python'],
  };

  print('Name: ${student['name']}');
  print('Skills: ${student['skills']}');

  List<Map<String, dynamic>> students = [
    {'name': 'Ahmed', 'score': 90},
    {'name': 'Mona', 'score': 85},
    {'name': 'Ali', 'score': 78},
  ];

  for (final student in students) {
    print('${student['name']} -> ${student['score']}');
  }

  Map<String, dynamic> company = {
    'name': 'Tech Company',
    'address': {
      'city': 'Cairo',
      'country': 'Egypt',
    },
  };

  final address =
      company['address'] as Map<String, dynamic>;

  print('City: ${address['city']}');
}


// ============================================================
// 9. QUEUE
// ============================================================

/*
Queue = FIFO

First In First Out

مناسب لـ:
- tasks
- printing
- requests
- notifications
*/

void queueExample() {
  print('\n=== 9. QUEUE ===');

  Queue<String> queue = Queue<String>();

  queue.add('Customer 1');
  queue.add('Customer 2');
  queue.add('Customer 3');

  print('Queue: $queue');
  print('First: ${queue.first}');

  final served = queue.removeFirst();

  print('Served: $served');
  print('Remaining: $queue');
}


// ============================================================
// 10. STACK
// ============================================================

/*
Dart لا توفر Stack class أساسية باسم Stack.
نستطيع بناؤها باستخدام List.

Stack = LIFO
Last In First Out

مناسب لـ:
- Undo / Redo
- History
- Navigation
*/

class Stack<T> {
  final List<T> _items = [];

  void push(T item) {
    _items.add(item);
  }

  T pop() {
    if (_items.isEmpty) {
      throw StateError('Stack is empty');
    }

    return _items.removeLast();
  }

  T get peek {
    if (_items.isEmpty) {
      throw StateError('Stack is empty');
    }

    return _items.last;
  }

  bool get isEmpty => _items.isEmpty;

  int get length => _items.length;

  @override
  String toString() => _items.toString();
}

void stackExample() {
  print('\n=== 10. STACK ===');

  Stack<String> stack = Stack<String>();

  stack.push('Page A');
  stack.push('Page B');
  stack.push('Page C');

  print('Stack: $stack');
  print('Top: ${stack.peek}');

  print('Pop: ${stack.pop()}');
  print('After pop: $stack');
}


// ============================================================
// 11. SPREAD + COLLECTION IF/FOR
// ============================================================

void collectionFeaturesExample() {
  print('\n=== 11. COLLECTION FEATURES ===');

  List<String> basicSkills = ['Dart', 'Flutter'];
  List<String> advancedSkills = ['Firebase', 'API'];

  List<String> allSkills = [
    ...basicSkills,
    ...advancedSkills,
  ];

  print('Spread: $allSkills');

  bool isAdmin = true;

  List<String> menu = [
    'Home',
    'Profile',
    if (isAdmin) 'Admin Panel',
  ];

  print('Collection-if: $menu');

  List<int> numbers = [
    for (int i = 1; i <= 5; i++) i * 10,
  ];

  print('Collection-for: $numbers');
}


// ============================================================
// 12. RECORDS
// ============================================================

/*
Records تسمح بإرجاع أكثر من قيمة من Function
بدون إنشاء Class.

موجودة في إصدارات Dart الحديثة.
*/

(String, int) getUserInfo() {
  return ('Ahmed', 25);
}

({String name, int age}) getNamedUserInfo() {
  return (
    name: 'Mona',
    age: 22,
  );
}

void recordsExample() {
  print('\n=== 12. RECORDS ===');

  final user = getUserInfo();

  print('Name: ${user.$1}');
  print('Age: ${user.$2}');

  final namedUser = getNamedUserInfo();

  print('Name: ${namedUser.name}');
  print('Age: ${namedUser.age}');
}


// ============================================================
// 13. ENUM
// ============================================================

enum OrderStatus {
  pending,
  processing,
  shipped,
  delivered,
  cancelled,
}

void enumExample() {
  print('\n=== 13. ENUM ===');

  OrderStatus status = OrderStatus.shipped;

  switch (status) {
    case OrderStatus.pending:
      print('Pending');
      break;
    case OrderStatus.processing:
      print('Processing');
      break;
    case OrderStatus.shipped:
      print('Shipped');
      break;
    case OrderStatus.delivered:
      print('Delivered');
      break;
    case OrderStatus.cancelled:
      print('Cancelled');
      break;
  }
}


// ============================================================
// 14. MODEL CLASS
// ============================================================

/*
في المشاريع الحقيقية لا نفضل استخدام Map<String, dynamic>
في كل مكان.

الأفضل Model Class:

User(...)
بدل:
{'id': 1, 'name': 'Ahmed', ...}

الفوائد:
- Type Safety
- تنظيم أفضل
- autocomplete
- أسهل في التعامل مع API
- أسهل في صيانة المشروع
*/

class User {
  final int id;
  final String name;
  final String email;

  User({
    required this.id,
    required this.name,
    required this.email,
  });

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email)';
  }
}

void modelExample() {
  print('\n=== 14. MODEL ===');

  User user = User(
    id: 1,
    name: 'Ahmed',
    email: 'ahmed@gmail.com',
  );

  print(user);
}


// ============================================================
// 15. LIST OF OBJECTS
// ============================================================

void listOfObjectsExample() {
  print('\n=== 15. LIST OF OBJECTS ===');

  List<User> users = [
    User(
      id: 1,
      name: 'Ahmed',
      email: 'ahmed@gmail.com',
    ),
    User(
      id: 2,
      name: 'Mona',
      email: 'mona@gmail.com',
    ),
    User(
      id: 3,
      name: 'Ali',
      email: 'ali@gmail.com',
    ),
  ];

  for (final user in users) {
    print(user);
  }

  User selectedUser = users.firstWhere(
    (user) => user.id == 2,
  );

  print('Selected: $selectedUser');

  List<String> names = users
      .map((user) => user.name)
      .toList();

  print('Names: $names');
}


// ============================================================
// 16. JSON-LIKE DATA
// ============================================================

void jsonLikeExample() {
  print('\n=== 16. JSON-LIKE DATA ===');

  Map<String, dynamic> json = {
    'id': 101,
    'name': 'Ahmed',
    'email': 'ahmed@example.com',
    'skills': ['Dart', 'Flutter'],
    'address': {
      'city': 'Cairo',
      'country': 'Egypt',
    },
  };

  print('ID: ${json['id']}');
  print('Name: ${json['name']}');

  final skills = json['skills'] as List<dynamic>;
  print('Skills: $skills');

  final address =
      json['address'] as Map<String, dynamic>;

  print('City: ${address['city']}');
}


// ============================================================
// 17. MODEL FROM JSON / TO JSON
// ============================================================

class Product {
  final int id;
  final String name;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
    };
  }

  @override
  String toString() {
    return 'Product(id: $id, name: $name, price: $price)';
  }
}

void modelJsonExample() {
  print('\n=== 17. MODEL FROM JSON ===');

  Map<String, dynamic> json = {
    'id': 10,
    'name': 'Laptop',
    'price': 30000,
  };

  Product product = Product.fromJson(json);

  print(product);
  print('To JSON: ${product.toJson()}');
}


// ============================================================
// 18. FLUTTER DATA FLOW
// ============================================================

/*
Flutter data flow:

API
 ↓
JSON
 ↓
Map<String, dynamic>
 ↓
Model.fromJson()
 ↓
List<Model>
 ↓
ListView.builder
 ↓
UI

مثال Flutter:

ListView.builder(
  itemCount: products.length,
  itemBuilder: (context, index) {
    final product = products[index];

    return ListTile(
      title: Text(product.name),
      subtitle: Text('${product.price}'),
    );
  },
);
*/

List<Product> createProducts() {
  return [
    Product(
      id: 1,
      name: 'Laptop',
      price: 30000,
    ),
    Product(
      id: 2,
      name: 'Phone',
      price: 15000,
    ),
    Product(
      id: 3,
      name: 'Tablet',
      price: 10000,
    ),
  ];
}

void flutterDataFlowExample() {
  print('\n=== 18. FLUTTER DATA FLOW ===');

  final products = createProducts();

  for (final product in products) {
    print('${product.name}: ${product.price}');
  }
}


// ============================================================
// 19. SEARCH / FILTER / SORT
// ============================================================

void searchFilterSortExample() {
  print('\n=== 19. SEARCH / FILTER / SORT ===');

  List<Product> products = createProducts();

  String keyword = 'phone';

  List<Product> searchResults = products
      .where(
        (product) => product.name
            .toLowerCase()
            .contains(keyword.toLowerCase()),
      )
      .toList();

  print('Search: $searchResults');

  List<Product> cheapProducts = products
      .where((product) => product.price < 20000)
      .toList();

  print('Under 20000: $cheapProducts');

  products.sort(
    (a, b) => a.price.compareTo(b.price),
  );

  print('Sorted: $products');
}


// ============================================================
// 20. CHOOSING THE RIGHT DATA STRUCTURE
// ============================================================

/*
LIST
- Ordered
- index
- duplicates allowed

SET
- Unique
- no duplicates

MAP
- Key -> Value

QUEUE
- FIFO

STACK
- LIFO

MODEL CLASS
- structured application data

ENUM
- predefined states
*/

void choosingStructureExample() {
  print('\n=== 20. CHOOSING STRUCTURE ===');

  List<String> products = ['Phone', 'Laptop'];

  Set<String> categories = {
    'Electronics',
    'Books',
  };

  Map<String, double> prices = {
    'Phone': 15000,
    'Laptop': 30000,
  };

  Queue<String> tasks = Queue<String>();

  Stack<String> history = Stack<String>();

  print(products);
  print(categories);
  print(prices);
  print(tasks);
  print(history);
}


// ============================================================
// 21. MINI PROJECT — STUDENT MANAGEMENT
// ============================================================

class Student {
  final int id;
  final String name;
  final double score;

  Student({
    required this.id,
    required this.name,
    required this.score,
  });

  bool get isPassed => score >= 60;

  @override
  String toString() {
    return '$id - $name - $score';
  }
}

class StudentManager {
  final List<Student> students = [];

  void addStudent(Student student) {
    students.add(student);
  }

  List<Student> getPassedStudents() {
    return students
        .where((student) => student.isPassed)
        .toList();
  }

  List<Student> search(String keyword) {
    return students
        .where(
          (student) => student.name
              .toLowerCase()
              .contains(keyword.toLowerCase()),
        )
        .toList();
  }

  double getAverage() {
    if (students.isEmpty) return 0;

    final total = students
        .map((student) => student.score)
        .reduce((a, b) => a + b);

    return total / students.length;
  }
}

void miniProjectExample() {
  print('\n=== 21. MINI PROJECT ===');

  StudentManager manager = StudentManager();

  manager.addStudent(
    Student(id: 1, name: 'Ahmed', score: 90),
  );

  manager.addStudent(
    Student(id: 2, name: 'Mona', score: 85),
  );

  manager.addStudent(
    Student(id: 3, name: 'Ali', score: 55),
  );

  print('All: ${manager.students}');
  print('Passed: ${manager.getPassedStudents()}');
  print('Search Ahmed: ${manager.search('Ahmed')}');
  print('Average: ${manager.getAverage()}');
}


// ============================================================
// MAIN
// ============================================================

void main() {
  introductionExample();
  listExample();
  listMethodsExample();
  setExample();
  setOperationsExample();
  mapExample();
  mapMethodsExample();
  nestedDataExample();
  queueExample();
  stackExample();
  collectionFeaturesExample();
  recordsExample();
  enumExample();
  modelExample();
  listOfObjectsExample();
  jsonLikeExample();
  modelJsonExample();
  flutterDataFlowExample();
  searchFilterSortExample();
  choosingStructureExample();
  miniProjectExample();
}


/*
══════════════════════════════════════════════════════════════════════════════
                           TEST QUESTIONS
══════════════════════════════════════════════════════════════════════════════

حاول الحل بدون AI أولًا.

1) ما الفرق بين List و Set و Map؟

2) متى تستخدم Queue؟ ومتى تستخدم Stack؟

3) ما معنى FIFO و LIFO؟

4) ما الناتج؟

List<int> numbers = [10, 20, 30, 40];
print(numbers[2]);

5) أضف 50 إلى:
[10, 20, 30, 40]

6) احذف الرقم 20.

7) استخدم where للحصول على الأرقام الزوجية من:
[1, 2, 3, 4, 5, 6]

8) استخدم map لتحويل:
[1, 2, 3, 4]
إلى:
[10, 20, 30, 40]

9) ما الفرق بين map() و where()؟

10) ما الناتج؟

Set<int> numbers = {1, 2, 2, 3, 3, 3};

11) حوّل:
[1, 2, 2, 3, 4, 4, 5]
إلى unique values.

12) ما نتيجة:
{1,2,3}.union({3,4,5})
و:
{1,2,3}.intersection({3,4,5})

13) أنشئ Map تحتوي:
name, age, email, isStudent

14) كيف تصل إلى age؟

15) كيف تضيف city؟

16) كيف تغير email؟

17) كيف تحذف age؟

18) ما الفرق بين containsKey و containsValue؟

19) إذا أضفنا A ثم B ثم C إلى Queue، من يخرج أولًا؟

20) إذا أضفنا A ثم B ثم C إلى Stack، من يخرج أولًا؟

21) اكتب Stack باستخدام List.

22) اذكر استخدامًا حقيقيًا لـ Queue.

23) اذكر استخدامًا حقيقيًا لـ Stack.

24) اشرح:
forEach
map
where
reduce
fold
any
every

25) استخدم any للتحقق هل يوجد رقم أكبر من 20:
[10, 15, 20, 25, 30]

26) استخدم every للتحقق هل كل الأرقام موجبة.

27) استخدم reduce لحساب مجموع:
[10, 20, 30, 40]

28) كيف تصل إلى Flutter داخل:
{
  'name': 'Ahmed',
  'skills': ['Dart', 'Flutter']
}

29) لديك List<Map<String, dynamic>> products.
استخرج أسماء المنتجات باستخدام map.

30) لماذا نستخدم Model Class بدل Map<String, dynamic> في المشاريع الكبيرة؟

31) ما وظيفة factory Product.fromJson()؟

32) ما وظيفة toJson()؟

33) اشرح:
API -> JSON -> Model -> List<Model> -> ListView.builder -> UI

34) اكتب Function ترجع المنتجات التي سعرها أقل من 20000.

35) اكتب Function تبحث عن Product بالاسم.

36) رتب المنتجات حسب السعر تصاعديًا.

37) أنشئ Student Model يحتوي:
id
name
score

ثم أنشئ:
List<Student>

واكتب:
addStudent()
searchStudent()
getPassedStudents()
getAverage()


══════════════════════════════════════════════════════════════════════════════
                         FINAL CHALLENGE
                    E-COMMERCE DATA LAYER
══════════════════════════════════════════════════════════════════════════════

أنشئ نظام بيانات لمتجر إلكتروني.

Product:
- id
- name
- price
- category
- stock

المطلوب:

1. List<Product> products

2. addProduct()

3. removeProduct()

4. searchProduct()

5. filterByCategory()

6. filterByPrice()

7. sortByPrice()

8. getAvailableProducts()

9. Set<String> categories
   لاستخراج التصنيفات بدون تكرار.

10. Map<int, Product> productById
    للوصول للمنتج باستخدام ID.

11. Queue للطلبات الجديدة.

12. Stack لآخر العمليات.

13. جهز البيانات بحيث يمكن عرضها لاحقًا باستخدام:
    ListView.builder

Data Flow:

API / Local Data
       ↓
     JSON
       ↓
    Models
       ↓
Data Structures
       ↓
Search / Filter / Sort
       ↓
 Flutter Widgets
       ↓
      UI


══════════════════════════════════════════════════════════════════════════════
                              END OF PART 2
══════════════════════════════════════════════════════════════════════════════
*/

