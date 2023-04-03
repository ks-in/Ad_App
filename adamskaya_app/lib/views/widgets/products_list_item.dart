import 'package:flutter/material.dart';

import 'default_text.dart';

class ProductsListItem extends StatelessWidget {
  const ProductsListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Material(
      //elevation: 50.0,
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      child: Container(
          width: 250.0,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(),
          ),
          child: //Center(child: Text('Home Page'))
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // item image
              Container(
                height: 180,
                width: 230,
                //padding: EdgeInsets.all(10),
                //alignment: Alignment.topCenter,
                // margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/images/item_image.jpg'),
                  ),
                ),
                //child: Text('Home Page1'),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15.0,
                ),
                child: TextWidget(
                  text: 'itemName',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15.0,
                ),
                child: TextWidget(
                  text: 'itemPrice',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ],
          )),
    );
  }
}
