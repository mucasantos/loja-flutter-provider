import 'package:appshop2023/main_color.dart';
import 'package:appshop2023/model/product.dart';
import 'package:appshop2023/product_detail_screen.dart';
import 'package:appshop2023/providers/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  /*
  final String id;
  final String title;
  final String imageUrl;

  const ProductItem({
    Key? key,
    required this.id,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);
*/
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);

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
                    color: Colors.black54,
                    //   border: Border.all(
                    //       color: const Color(
                    //     0xffFC6828,
                    // )               ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    )),
                child: IconButton(
                  onPressed: product.toggleFavoriteStatus,
                  icon: Icon(
                    product.isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: color[800],
                  ),
                ),
              ),
            )),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            product.title,
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
              arguments: product.id,
            );
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
