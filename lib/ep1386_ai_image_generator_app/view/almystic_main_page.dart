import 'package:flutter/material.dart';

class AlmysticMainPage extends StatefulWidget {
  const AlmysticMainPage({Key? key}) : super(key: key);

  @override
  State<AlmysticMainPage> createState() => _AlmysticMainPageState();
}

class _AlmysticMainPageState extends State<AlmysticMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(26, 28, 34, 1),
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(85, 99, 249, 1),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(35, 36, 42, 1),
        child: Container(
          height: 72,
        ),
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
      ),
    );
  }
}
