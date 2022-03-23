import 'package:flutter/material.dart';
import 'package:opacity_page/screens/secundary_page.dart';

class PrimaryPage extends StatefulWidget {
  const PrimaryPage({Key? key}) : super(key: key);

  @override
  State<PrimaryPage> createState() => _PrimaryPageState();
}

class _PrimaryPageState extends State<PrimaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 250,
            color: Colors.red,
            width: double.infinity,
          ),
          Expanded(
              child: Container(
            color: Colors.blue,
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: _nextPage,
      ),
    );
  }

  void _nextPage() {
    Navigator.of(context).push(
      PageRouteBuilder(
        settings: const RouteSettings(arguments: {'nome': 'Tainan Santos'}),
        opaque: false, // set to false
        pageBuilder: (_, __, ___) => const SecundiPage(),
      ),
    );
  }
}
