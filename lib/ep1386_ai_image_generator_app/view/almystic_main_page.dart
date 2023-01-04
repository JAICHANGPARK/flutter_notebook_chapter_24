import 'package:flutter/material.dart';

class AlmysticMainPage extends StatefulWidget {
  const AlmysticMainPage({Key? key}) : super(key: key);

  @override
  State<AlmysticMainPage> createState() => _AlmysticMainPageState();
}

class _AlmysticMainPageState extends State<AlmysticMainPage> {
  int _index = 0;

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
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Container(
          height: 80,
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                children: [
                  Container(
                    height: 3,
                    width: 32,
                    decoration: BoxDecoration(
                      color: _index == 1 ? Colors.blue : Colors.transparent,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _index = 1;
                      });
                    },
                    icon: Icon(Icons.home_outlined),
                    color: _index == 1 ? Colors.blue : Colors.grey,
                    iconSize: 32,
                  )
                ],
              )),
              Expanded(
                  flex: 2,
                  child: Column(
                children: [
                  Container(
                    height: 3,
                    width: 32,
                    decoration: BoxDecoration(
                      color: _index == 2 ? Colors.blue : Colors.transparent,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _index = 2;
                      });
                    },
                    icon: Icon(Icons.explore_outlined),
                    color: _index == 2 ? Colors.blue : Colors.grey,
                    iconSize: 32,
                  )
                ],
              )),
              Expanded(flex: 2, child: Container()),
              Expanded(
                flex: 2,
                  child: Column(
                children: [
                  Container(
                    height: 3,
                    width: 32,
                    decoration: BoxDecoration(
                      color: _index == 3 ? Colors.blue : Colors.transparent,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _index = 3;
                      });
                    },
                    icon: Icon(Icons.folder_copy_outlined),
                    color: _index == 3 ? Colors.blue : Colors.grey,
                    iconSize: 32,
                  )
                ],
              )),
              Expanded(
                  flex: 2,
                  child: Column(
                children: [
                  Container(
                    height: 3,
                    width: 32,
                    decoration: BoxDecoration(
                      color: _index == 4 ? Colors.blue : Colors.transparent,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _index = 4;
                      });
                    },
                    icon: Icon(Icons.person_2_outlined),
                    color: _index == 4 ? Colors.blue : Colors.grey,
                    iconSize: 32,
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
