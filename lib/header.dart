import 'package:flutter/material.dart';
import 'package:platzi_widget/back_wheater.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final button = InkWell(
      child: Container(
        margin: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Color(0xFFf38b02),
                offset: Offset(10.0, 10.0),
                blurRadius: 30.0)
          ],
          borderRadius: BorderRadius.circular(30.0),
          color: const Color(0xFFfeb800),
        ),
        child: const Center(
          child: Text(
            'GO TO CALENDAR',
            style: TextStyle(
                fontSize: 12.0,
                color: Colors.white,
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );

    return Scaffold(
      body: Stack(
        children: <Widget>[
          const BackWheater(),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 50.0),
            child: Column(
              children: <Widget>[
                const Text(
                  'TUESDAY',
                  style: TextStyle(
                      fontSize: 55.0,
                      color: Color(0xFFeba800),
                      fontWeight: FontWeight.w600),
                ),
                button
              ],
            ),
          )
        ],
      ),
    );
  }
}
