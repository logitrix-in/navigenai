import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              // height: 70,
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1,
                vertical: 20,
              ),
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  SvgPicture.network(
                    "https://upload.wikimedia.org/wikipedia/commons/a/a9/Amazon_logo.svg",
                    width: 100,
                  ),
                  const SizedBox(width: 50),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.location_on_outlined, color: Color(0xFF221F1F)),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Deliver to", style: GoogleFonts.redHatDisplay(
                              color: const Color(0xFF221F1F),
                              fontSize: 12,
                            )),
                            Text("Ankara, Türkiye", style: GoogleFonts.redHatDisplay(
                              color: const Color(0xFF221F1F),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  
                  ),
                  Expanded(child: Container(
                    color: Colors.white,
                    height: 60,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey[300]!),
                      ),
                      child: TextField(
                        decoration: InputDecoration.collapsed(hintText: "Ask me anything for Products, Brands and More",hintStyle: GoogleFonts.redHatDisplay(
                          color: Colors.grey[400],
                          fontSize: 16,
                        )),
                      ),
                    ),
                  )),
                  SizedBox(
                    width: 20,
                  
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.mic_none_outlined, color: Color(0xFF221F1F)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.camera_alt_outlined, color: Color(0xFF221F1F)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.shopping_cart_outlined, color: Color(0xFF221F1F)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.menu, color: Color(0xFF221F1F)),
                      ],
                    ),
                  ),
                  
                ],
              ),
            )
;
  }
}