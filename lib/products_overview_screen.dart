import 'package:appshop2023/main_color.dart';
import 'package:appshop2023/model/product.dart';
import 'package:appshop2023/widgets/app_bar_content.dart';
import 'package:appshop2023/widgets/card_category.dart';
import 'package:appshop2023/widgets/products_gridview.dart';

import 'package:flutter/material.dart';

class ProductsOverviewScreen extends StatelessWidget {
  const ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[color[900]!, color[300]!],
            ),
          ),
          child: const AppBarContent(),
        ),
      ),
      body: Column(
        children: [
          //section to promotions
          const CardCategory(),
          Expanded(
            child: ProductsGridView(),
          ),
        ],
      ),
    );
  }
}
