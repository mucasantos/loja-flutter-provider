import 'package:appshop2023/main_color.dart';
import 'package:appshop2023/product_detail_screen.dart';
import 'package:appshop2023/providers/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    final productData = Provider.of<Products>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: GridTile(
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
                  onPressed: () {
                    productData.toggleFavorite(id);
                  },
                  icon: Icon(
                    Icons.favorite,
                    color:
                        productData.isFavorite(id) ? color[800] : Colors.black,
                  ),
                ),
              ),
            )),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetailsScreen.routeName,
              arguments: id,
            );
          },
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
