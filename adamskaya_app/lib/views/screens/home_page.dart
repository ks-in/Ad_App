import 'package:adamskaya_app/style/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/default_text.dart';
import '../widgets/products_list_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> users = <String>["Tom", "Alice", "Bob", "Sam", "Kate"];

    return Scaffold(
         backgroundColor: Colors.greenAccent,
        // appBar: AppBar(title: Text('Home Page'),),

        body:

        GridView.builder(
    //padding: const EdgeInsets.all(8),
    itemCount: users.length,
    itemBuilder: (BuildContext context, int index) {
    return //ProductsListItem();
    Text(users[index], style: TextStyle(fontSize: 22));
    },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
          ),

    )


        /*Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    child: Wrap(
    spacing: 16,
    runSpacing: 16,
    children: List.generate(
    users.length,
    (index) => ProductsListItem(),
    ))),
*/
        //Center(child: Text('Categories Page'))


        //ProductsListItem(),
        );
  }
}
