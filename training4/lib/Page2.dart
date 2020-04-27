import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Page2Stateful();
  }
}

class Page2Stateful extends StatefulWidget {
  @override
  _Page2StatefulState createState() => _Page2StatefulState();
}

class _Page2StatefulState extends State<Page2Stateful> {
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState page2 called');
  }

  @override
  Widget build(BuildContext context) {
    print('build page2 called');
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('deactivate page2 called');
  }
}
