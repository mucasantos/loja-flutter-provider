import 'package:appshop2023/model/product.dart';
import 'package:appshop2023/providers/products_provider.dart';
import 'package:appshop2023/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);

    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
        itemCount: productData.items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, i) {
          final product = productData.items;
          return ChangeNotifierProvider.value(
            value: product[i],
            child: ProductItem(
                // id: product[i].id,
                //  imageUrl: product[i].imageUrl,
                //  title: product[i].title,
                ),
          );
        });
  }
}
