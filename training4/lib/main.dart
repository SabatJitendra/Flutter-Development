import 'package:flutter/material.dart';
import 'package:http/http.dart' as httpClient;
import 'dart:convert';

import 'Page1.dart';

void main() => runApp(BasicWidget());

class BasicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasicStatefulWidget();
  }
}

class BasicStatefulWidget extends StatefulWidget {
  @override
  _BasicStatefulWidgetState createState() => _BasicStatefulWidgetState();
}

class _BasicStatefulWidgetState extends State<BasicStatefulWidget> {
  void getServiceData() async {
    try {
      httpClient.Response resp =
          await httpClient.get('http://jsonplaceholder.typicode.com/posts');
      var decodedResp = jsonDecode(resp.body);
      print(decodedResp[1]['title']);
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState main executed');
  }

  @override
  Widget build(BuildContext context) {
    print('build main executed');
    return MaterialApp(home: Page1());
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('deactivate main executed');
  }
}
