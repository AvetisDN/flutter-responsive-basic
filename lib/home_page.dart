import 'package:flutter/material.dart';
import 'package:responsive_app_1/responsive_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: SafeArea(
          child: ResponsiveHelper(
        mobile: Column(
          children: [
            buildBanner(),
            buildText(),
          ],
        ),
        tab: Row(
          children: [
            buildBanner(),
            Expanded(child: buildText()),
          ],
        ),
        desktop: Row(
          children: [
            buildBanner(),
            Expanded(child: buildText()),
          ],
        ),
      )),
    );
  }

  Text buildText() {
    return const Text(
      'Hello world 👋🏻 \nmore text goes here...',
      style: TextStyle(fontSize: 22),
    );
  }

  Container buildBanner() {
    return Container(
      padding: EdgeInsets.all(24),
      child: Container(
        width: 320,
        height: 180,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red, Colors.pink]),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
