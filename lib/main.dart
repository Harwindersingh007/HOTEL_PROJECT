import 'package:flutter/material.dart';

import 'package:hotel/pages/Homepage.dart';

void main() {
  runApp(const Hotel());
}

class Hotel extends StatelessWidget {
  const Hotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
