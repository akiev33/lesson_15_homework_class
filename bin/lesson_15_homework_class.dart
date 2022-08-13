// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:lesson_15_homework_class/lesson_15_homework_class.dart'
// lesson_15_homework_class;

import 'dart:core';

void main() {
  //1
  var bishkek = Country(city: 'Bishkek', climate: 'Sun');
  print(bishkek);

  //2
  var bmwE30 = Car(
      power: 'ППц мощный',
      color: 'черный',
      nameOfCar: 'bmw e30',
      price: 10000000);

  print(bmwE30);

  //3
  var lenovo = Phone(number: 996501402440, model: 'lenovo+', weight: '1 кг');
  var iPhone = Phone(
      number: 996702981800,
      model: 'iPhone 13 Pro Max',
      weight: 'весит очень много');
  var sumsung =
      Phone(number: 996550402441, model: 'Sumsung A100+', weight: 'хз');

  print(lenovo);
  lenovo.receiveCall('Levui chel');
  lenovo.getNumber(996550934854);
  lenovo.sendMessage([996550232348, 99670777817777, 996501402440]);

  print(iPhone);
  iPhone.receiveCall('mama');
  iPhone.getNumber(996702978654);

  print(sumsung);
  sumsung.receiveCall('moshennik');
  sumsung.getNumber(996555098765);

  //4
  final book1 = Book(auth: 'Aitmatov', nameOfBook: 'Ak keme');
  final book2 = Book(auth: 'Pyshkin', nameOfBook: 'ranui');
  final book3 = Book(auth: 'djulbeta', nameOfBook: 'rameo');
  var eldar = LibraryUser(
      fio: 'EAE',
      ticketNumber: 124149853,
      faculty: 'dsfjsdfjs',
      bithday: DateTime.utc(2003, 02, 03),
      phoneNumber: 996501402440);

  print(eldar.bithday);
  eldar.takeBook([book1, book2]);
  eldar.takeNameOfBook([book1, book2]);
}

class Country {
  final String city;
  final String climate;

  Country({
    required this.city,
    required this.climate,
  });

  @override
  String toString() => 'Country(city: $city, climate: $climate)';
}

class Car {
  final String power;
  final String color;
  final String nameOfCar;
  final int price;
  Car({
    required this.power,
    required this.color,
    required this.nameOfCar,
    required this.price,
  });

  @override
  String toString() {
    return 'Car(power: $power, color: $color, nameOfCar: $nameOfCar, price: $price dollars)';
  }
}

class Phone {
  final int number;
  final String model;
  final String weight;

  Phone({
    required this.number,
    required this.model,
    required this.weight,
  });

  receiveCall(String name) {
    print('Звонит $name');
  }

  getNumber(int number) {
    print('номер $number');
  }

  sendMessage(List<int> number) {
    print(number);
  }

  @override
  String toString() => 'Phone(number: $number, model: $model, weight: $weight)';
}

//4
class LibraryUser {
  final String fio;
  final int ticketNumber;
  final String faculty;
  final DateTime bithday;
  final int phoneNumber;

  LibraryUser({
    required this.fio,
    required this.ticketNumber,
    required this.faculty,
    required this.bithday,
    required this.phoneNumber,
  });

  takeBook(List<Book> books) {
    print('$fio взял ${books.length} книги');
  }

  takeNameOfBook(List<Book> books) {
    final names = books.map((e) => e.nameOfBook);
    print('$fio взял книги: ${names.join(' ')}');
  }
}

class Book {
  final String auth;
  final String nameOfBook;
  Book({
    required this.auth,
    required this.nameOfBook,
  });
}



