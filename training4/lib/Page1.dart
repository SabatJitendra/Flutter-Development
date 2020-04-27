import 'package:flutter/material.dart';

import 'Page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Route'),
        ),
        body: Page1Stateful());
  }
}

class Page1Stateful extends StatefulWidget {
  @override
  _Page1StatefulState createState() => _Page1StatefulState();
}

class _Page1StatefulState extends State<Page1Stateful> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState page1 called');
  }

  @override
  Widget build(BuildContext context) {
    print('build page1 called');
    return Center(
      child: RaisedButton(
        child: Text('Go to page2'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Page2(),
            ),
          );
        },
      ),
    );
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('deactivate page1 called');
  }
}
