import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/widgets/navbarwidget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Category Screen')),
      body: Column(children: [
          
        ],
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
