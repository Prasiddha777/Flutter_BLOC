import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class EquitableScreen extends StatefulWidget {
  const EquitableScreen({super.key});

  @override
  State<EquitableScreen> createState() => _EquitableScreenState();
}

class _EquitableScreenState extends State<EquitableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Equitables'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Person personOne = Person(name: 'Prasiddha', age: 23);
          Person personTwo = Person(name: 'Prasiddha', age: 23);

          print(personOne.hashCode.toString());
          print(personTwo.hashCode.toString());

          //--//
          print(personOne == personTwo);
          // print(personOne == personOne);
        },
      ),
    );
  }
}

// class Person {
//   final String name;
//   final int age;

//   Person({required this.name, required this.age});

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         other is Person &&
//             runtimeType == other.runtimeType &&
//             name == other.name &&
//             age == other.age;
//   }

//   @override
//   int get hashCode => name.hashCode ^ age.hashCode;
// }

// "AFTER EQUATABLE PACKAGE "

class Person extends Equatable {
  final String name;
  final int age;

  const Person({required this.name, required this.age});

  @override
  List<Object?> get props => [name, age];
}
