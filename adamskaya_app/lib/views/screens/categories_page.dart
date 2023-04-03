import 'package:flutter/material.dart';

import '../../style/colors.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      //appBar: AppBar(title: Text('Categories Page'),),
      body: Container(
        child: Center(child: Text('Categories Page')),
      ),
        );

  }
}

