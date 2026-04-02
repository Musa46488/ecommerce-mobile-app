import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/widgets/navbarwidget.dart';

class PrintScreen extends StatelessWidget {
  const PrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Print Screen')),
      body: Column(children: [
          
        ],
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
