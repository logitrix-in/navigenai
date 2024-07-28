import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProductSingleCard extends StatelessWidget {
  const ProductSingleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context,sizingInformation) {
        return Container(
          constraints: BoxConstraints(
              maxWidth: sizingInformation.deviceScreenType == DeviceScreenType.desktop? MediaQuery.of(context).size.width * 0.15 : MediaQuery.of(context).size.width,
              minHeight: MediaQuery.of(context).size.height * 0.3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: sizingInformation.deviceScreenType == DeviceScreenType.desktop? MediaQuery.of(context).size.width * 0.15 : MediaQuery.of(context).size.width, 
                height: MediaQuery.of(context).size.height * 0.3,
                constraints: BoxConstraints(
                  maxWidth: sizingInformation.deviceScreenType == DeviceScreenType.desktop? MediaQuery.of(context).size.width * 0.15 : MediaQuery.of(context).size.width,
                  minHeight: MediaQuery.of(context).size.height * 0.3,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/585e2cd2-4f2a-408c-a8ba-f89952cdf332/revolution-6-road-running-shoes-NC0P7k.png"),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(height: 10),
              Text(
                "Nike Air Max 270",
                style: GoogleFonts.redHatDisplay(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF221F1F),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "Nike",
                style: GoogleFonts.redHatDisplay(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              RatingBar.readOnly(
                size: 20,
                filledIcon: Icons.star,
                emptyIcon: Icons.star_border_outlined,
                
                maxRating: 5,
                halfFilledIcon: Icons.star_half_outlined,
                initialRating: 3.5,
                isHalfAllowed: true,
        
              ),
              const SizedBox(height: 5),
              Container(
                width: sizingInformation.deviceScreenType == DeviceScreenType.desktop? MediaQuery.of(context).size.width * 0.15 : MediaQuery.of(context).size.width,
                constraints: BoxConstraints(
                  maxWidth: sizingInformation.deviceScreenType == DeviceScreenType.desktop? MediaQuery.of(context).size.width * 0.15 : MediaQuery.of(context).size.width,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "₹ 1,200",
                      style: GoogleFonts.redHatDisplay(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF221F1F),
                      ),
                    ),
                    OutlinedButton.icon(
                        icon: const Icon(
                          Icons.add_shopping_cart_outlined,
                          size: 20,
                        ),
                        style: ButtonStyle(
                          foregroundColor: WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                              if (states.contains(WidgetState.hovered)) {
                                return Colors.white;
                              }
                              return Color(0xFFFF9900);
                            },
                          ),
                          backgroundColor: WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                              if (states.contains(WidgetState.hovered)) {
                                return Color(0xFFFF9900);
                              }
                              return Colors.transparent;
                            },
                          ),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          side: WidgetStateProperty.all(
                            BorderSide(
                              color: Color(0xFFFF9900),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        label: Text(
                          "Add to Cart",
                          style: GoogleFonts.redHatDisplay(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
