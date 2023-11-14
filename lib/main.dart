import 'package:baseapp/data.dart';
import 'package:baseapp/model.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          Data.contacts.map((value) => Contact(contact: value)).toList()
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  final Person contact;
  const Contact({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 500,
      child: ListTile(
        onTap: () {},
        title: Text(contact.name),
        subtitle: Text(contact.number),
      ),
    );
  }
}
