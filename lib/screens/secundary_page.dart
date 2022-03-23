import 'package:flutter/material.dart';

class SecundiPage extends StatefulWidget {
  const SecundiPage({Key? key}) : super(key: key);

  @override
  State<SecundiPage> createState() => _SecundiPageState();
}

class _SecundiPageState extends State<SecundiPage> {
  @override
  Widget build(BuildContext context) {
    Object obj = ModalRoute.of(context)?.settings.arguments as Object;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        color: Colors.purple.withOpacity(.5),
        child: Center(
          child: Text(obj.toString()),
        ),
      ),
    );
  }
}
