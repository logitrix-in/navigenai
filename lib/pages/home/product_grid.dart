import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigenai/pages/home/models/productModel.dart';
import 'package:navigenai/pages/home/product_single_item.dart';

class ProductGridView extends StatelessWidget {
  final List<ProductModel> products;
  const ProductGridView({super.key,required this.products});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1,
        ),
        child:  Obx(()=>Wrap(
          spacing: 20,
          runSpacing: 40,
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          children: products.map((e) => ProductSingleCard(
            product: e,
          ).animate().then(
              delay: Durations.long1,
              duration: Durations.long1
            ).fade(),).toList(),
        ),)
      ),
    );
  }
}
