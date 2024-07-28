import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigenai/pages/home/product_single_item.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1,
        ),
        child:  Wrap(
          spacing: 20,
          runSpacing: 40,
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          children: [
            const ProductSingleCard().animate().then(
              delay: Durations.long1,
              duration: Durations.long1
            ).fade(),
            const ProductSingleCard().animate().then(
              delay: Durations.long2,
              duration: Durations.long2
            ).fade(),
            const ProductSingleCard().animate().then(
              delay: Durations.long3,
              duration: Durations.long3
            ).fade(),
            const ProductSingleCard().animate().then(
              delay: Durations.long4,
              duration: Durations.long4
            ).fade(),
            
      
      
          ],
        ),
      ),
    );
  }
}
