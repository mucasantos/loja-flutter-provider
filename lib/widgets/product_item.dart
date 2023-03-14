import 'package:appshop2023/main_color.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const ProductItem({
    Key? key,
    required this.id,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      header: Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
              right: 8,
            ),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  //   border: Border.all(
                  //       color: const Color(
                  //     0xffFC6828,
                  // )               ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  )),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: color[800],
                ),
              ),
            ),
          )),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
      ),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
