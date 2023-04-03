import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text('VIKA ADAMSKAYA',
              style: TextStyle(fontSize: 38, fontFamily: 'Montserrat')),
          SizedBox(
            height: 10,
          ),
          Icon(
            Icons.favorite,
            size: 34,
            //color: Color(0xFFf7418c)
          ),
        ],
      ),
    );
  }
}

/*
Container logoWidget() {
  return Container(
    child: Column(
      children: <Widget>[
        Text('VIKA ADAMSKAYA',
            style: TextStyle(fontSize: 38, fontFamily: 'Montserrat')),
        SizedBox(
          height: 10,
        ),
        Icon(
          Icons.favorite,
          size: 34,
            //color: Colors.deepPurple
        ),
      ],
    ),
  );
}*/
