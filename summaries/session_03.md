<div dir="rtl">

# 📱 ملخص الجلسة الثالثة (Session 03)

> **المحاضر:** م / إبراهيم حمادة مسعد  
> **الموضوع:** الفرق بين `var` و `dynamic`، وقت الترجمة والتشغيل، الثوابت `final` و `const`، دمج النصوص، التحويلات، ومعاملات الأمان من القيم الفارغة.

---

## 1. الفرق بين Var و Dynamic ومميزاتهم

| وجه المقارنة | `var` | `dynamic` |
|:---|:---|:---|
| **الفكرة الأساسية** | تجعل Dart تستنتج نوع البيانات تلقائياً من أول قيمة | نوع مرن يقبل أي نوع بيانات ويمكن تغييره في أي وقت |
| **تغيير النوع لاحقاً** | ❌ غير مسموح بعد تحديد أول قيمة | ✅ مسموح بتغيير النوع في أي سطر |
| **وقت الفحص** | يُفحص في وقت الترجمة (Compile Time) | يُفحص في وقت التشغيل (Run Time) |
| **المميزات والاستخدام** | كود مختصر + أمان عالي + دعم الإكمال التلقائي | مرونة عالية عند استقبال بيانات غير معروفة النوع مثل JSON |

</div>

```dart
void main() {
  var city = 'Cairo';
  // city = 100; // Error: cannot change type from String to int

  dynamic data = 100;
  data = 'Hello Dart'; // Valid: dynamic allows changing types
  print(data);
}
```

<div dir="rtl">

---

## 2. الفرق بين Compile Time و Run Time

| المرحلة | الاسم بالعربي | متى تحدث؟ | ماذا يحدث فيها؟ |
|:---|:---|:---|:---|
| **Compile Time** | وقت الترجمة | **قبل تشغيل البرنامج** | يقوم المترجم بفحص قواعد الكود والأنواع وتحويله إلى لغة الآلة |
| **Run Time** | وقت التشغيل | **أثناء عمل البرنامج** | تنفيذ الأوامر فعلياً في الذاكرة والتفاعل مع مدخلات المستخدم |

* **🎯 النقطة الفاصلة بينهما:** هي **لحظة تشغيل البرنامج وبدء تنفيذ دالة `main`**؛ قبلها الكود يُفحص ويُترجم، وبعدها البرنامج يعمل ويتفاعل مع المستخدم.

---

## 3. الفرق بين Final و Const

كلاهما يُستخدم لتعريف ثوابت لا يمكن تغيير قيمتها بعد إسنادها أول مرة، والفرق بينهما في وقت معرفة القيمة:

| المقارنة | `const` | `final` |
|:---|:---|:---|
| **وقت تحديد القيمة** | وقت الترجمة (Compile Time) قبل التشغيل | وقت التشغيل (Run Time) أثناء عمل البرنامج |
| **متى نستخدمه؟** | للقيم الثابتة المعروفة مسبقاً | للقيم التي تتحدد لحظة التشغيل مثل الوقت الحالي أو مدخلات المستخدم |

</div>

```dart
void main() {
  const double pi = 3.14159;           // Known before running the program
  final DateTime now = DateTime.now(); // Determined when the program runs

  print('PI = $pi');
  print('Time = $now');
}
```

<div dir="rtl">

---

## 4. دمج المتغيرات في النصوص: String Interpolation

طريقة وضع قيم المتغيرات أو العمليات البرمجية مباشرة داخل النص بدلاً من علامة `+`:

| الحالة | الصيغة | مثال في الكود |
|:---|:---|:---|
| **دمج متغير واحد** | نضع علامة `$` قبل اسم المتغير | `'Hello $name'` |
| **دمج عملية حسابية أو خاصية** | نضع العملية داخل `${}` | `'Next year: ${age + 1}'` |

</div>

```dart
void main() {
  String name = 'Ahmed';
  int age = 20;

  print('My name is $name');
  print('Next year my age will be ${age + 1}');
}
```

<div dir="rtl">

---

## 5. الإدخال والتحويل بين الأنواع: Type Conversion

أي إدخال من المستخدم عبر `stdin.readLineSync` يكون نصاً، لذلك نحوله عند التعامل مع الأرقام:

| التحويل المطلوب | الدالة المستخدمة | مثال |
|:---|:---|:---|
| **من نص إلى رقم صحيح** | `int.parse` | `int.parse('25')` |
| **من نص إلى رقم عشري** | `double.parse` | `double.parse('99.5')` |
| **من رقم إلى نص** | `toString` | `100.toString()` |
| **تحويل آمن بدون خطأ** | `int.tryParse` | يرجع `null` بدلاً من إيقاف البرنامج إذا كان النص غير صالح |

</div>

```dart
void main() {
  String ageText = '25';
  int age = int.parse(ageText);
  print('Age = $age');

  String invalidInput = 'abc';
  int? safeResult = int.tryParse(invalidInput);
  print('Safe Result = $safeResult'); // Output: null (No crash)
}
```

<div dir="rtl">

---

## 6. معاملات الأمان من القيم الفارغة: Null-aware Operators

| المعامل | اسمه | وظيفته | مثال |
|:---:|:---|:---|:---|
| **`?`** | Nullable Type | يسمح للمتغير بأن يحمل قيمة فارغة `null` | `String? username;` |
| **`??`** | If-Null Operator | يعطي قيمة بديلة إذا كان المتغير `null` | `username ?? 'Guest'` |
| **`??=`** | Null-aware Assignment | يضع قيمة داخل المتغير فقط إذا كان `null` حالياً | `nickname ??= 'User'` |
| **`?.`** | Null-aware Access | يصل لخاصية المتغير بأمان فقط لو لم يكن `null` | `username?.length` |
| **`!`** | Null Assertion | يخبر المترجم أن القيمة ليست `null` بالتأكيد | `email!.length` |

</div>

```dart
void main() {
  String? username;

  // 1. Default value if null using ??
  String displayName = username ?? 'Guest';
  print('Display: $displayName'); // Output: Guest

  // 2. Assign value only if currently null using ??=
  username ??= 'Ahmed';
  print('Username: $username'); // Output: Ahmed

  // 3. Assert non-null using !
  print('Length: ${username!.length}'); // Output: 5
}
```
