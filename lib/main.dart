import 'package:flutter/cupertino.dart';

import '../theme/_export_theme.dart';
import '../widget/windowbar_buttons_widget.dart';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        unselectedWidgetColor: Colors.grey,
      ),
      home: const HomePage(),
    );
  }
}

//~ -----------------------------------------------------------------
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          SideMenu(),
          ViewHomePage(),
        ],
      ),
    );
  }
}

//~ -----------------------------------------------------------------

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Container(
        color: sideMenuBackgroundColor,
        child: Column(
          children: [
            SizedBox(
              height: 10,
              child: Expanded(
                child: MoveWindow(),
              ),
            ),
            Expanded(
              child: Container(
                color: sideMenuBackgroundColor,
                child: ListView(
                  children: [
                    Container(
                      height: 150,
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(color: Color(0xFF3C3C3C), width: 2),
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/Logo.png',
                          width: 226,
                          height: 140,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: sideMenuButtonStyle,
                      onPressed: () {},
                      child: const SizedBox(
                        height: 90,
                        child: Center(
                          child: Text('Início',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Segoe UI',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.5,
                              )),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: sideMenuButtonStyle,
                      onPressed: () {},
                      child: const SizedBox(
                        height: 90,
                        child: Center(
                          child: Text('Atividades',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Segoe UI',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.5,
                              )),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: sideMenuButtonStyle,
                      onPressed: () {},
                      child: const SizedBox(
                        height: 90,
                        child: Center(
                          child: Text('Obras',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Segoe UI',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.5,
                              )),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: sideMenuButtonStyle,
                      onPressed: () {},
                      child: const SizedBox(
                        height: 90,
                        child: Center(
                          child: Text('Análises',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Segoe UI',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.5,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//~ -----------------------------------------------------------------

class ViewHomePage extends StatelessWidget {
  const ViewHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            color: redPrimaryColor,
            height: 10,
            child: Expanded(
              child: MoveWindow(),
            ),
          ),
          Container(
            color: Colors.transparent,
            child: const Expanded(
              child: WindowBarButtons(
                color: backgroundColor,
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: backgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
