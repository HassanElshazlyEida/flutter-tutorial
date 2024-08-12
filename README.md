# udemy_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Ecommerce

using main function in main.dart file
```dart
void main() {

  runApp(ECommerce());

}
```

<img src="prototype/Ecommerce%20-%201.png" width="200">
<img src="prototype/Ecommerce%20-%202.png" width="200">
<img src="prototype/Ecommerce%20-%203.png" width="200">
<img src="prototype/Ecommerce%20-%204.png" width="200">
<img src="prototype/Ecommerce%20-%205.png" width="200">

## To Do List
using main function in main.dart file
```dart
void main() async {

  await Hive.initFlutter();
  var box = await Hive.openBox('db');

  runApp(MyApp());
}
```

<img src="prototype/To%20Do%20List%20-%201.png" width="200">
<img src="prototype/To%20Do%20List%20-%202.png" width="200">
<img src="prototype/To%20Do%20List%20-%203.png" width="200">

## Shopping Cart

using main function in main.dart file
```dart
void main()  {

  runApp(ShoppingCart());
  
}
```

<img src="prototype/Shopping Cart - 1.png" width="200">
<img src="prototype/Shopping Cart - 2.png" width="200">


## Counter State Management Provider 
using main function in main.dart file
```dart
void main()  {

    runApp(const StateManagement());
  
}
```

## Counter State Bloc Design Pattern 
using main function in main.dart file
```dart
void main()  {

    runApp(const StateManagementBloc());
  
}
```
