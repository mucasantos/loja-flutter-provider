import 'package:appshop2023/main_color.dart';
import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      height: 220,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 40,
              right: 20,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
                color: color[800],
                //   border: Border.all(
                //       color: const Color(
                //     0xffFC6828,
                // )               ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                )),
          ),
          Positioned(
              right: 0,
              //bottom: 0,
              child: Image.asset(
                'assets/images/woman.png',
                fit: BoxFit.cover,
              )),
          const Positioned(
            top: 50,
            left: 20,
            child: Text(
              "women",
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
