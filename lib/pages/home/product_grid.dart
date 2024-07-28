import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigenai/pages/home/product_single_item.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.1,
      ),
      child: const Wrap(
        spacing: 20,
        runSpacing: 40,
        alignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          ProductSingleCard(),
          ProductSingleCard(),
          ProductSingleCard(),
          ProductSingleCard(),
          ProductSingleCard(),
          ProductSingleCard(),
          ProductSingleCard(),

        ],
      ),
    );
  }
}
