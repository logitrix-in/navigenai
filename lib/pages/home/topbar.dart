import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigenai/pages/home/controller/home_controller.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TopBar extends StatelessWidget {
  final HomeController controller;
  const TopBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Container(
        // height: 70,
        margin: EdgeInsets.symmetric(
          horizontal:
              sizingInformation.deviceScreenType == DeviceScreenType.desktop
                  ? MediaQuery.of(context).size.width * 0.1
                  : MediaQuery.of(context).size.width * 0.05,
          vertical: 20,
        ),
        color: Colors.white,
        child: Row(
          mainAxisAlignment:
              sizingInformation.deviceScreenType == DeviceScreenType.desktop
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: sizingInformation.deviceScreenType ==
                  DeviceScreenType.desktop
              ? [
                  Image.network(
                    "https://i.ibb.co/fS5CWMR/navigen-logo.png",
                    width: 100,
                  ),
                  const SizedBox(width: 50),
                  // Container(
                  //   padding: const EdgeInsets.symmetric(
                  //     horizontal: 20,
                  //     vertical: 10,
                  //   ),
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.circular(5),
                  //     border: Border.all(color: Colors.grey[300]!),
                  //   ),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     children: [
                  //       const Icon(Icons.location_on_outlined,
                  //           color: Color(0xFF221F1F)),
                  //       const SizedBox(width: 10),
                  //       Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           Text("Deliver to",
                  //               style: GoogleFonts.redHatDisplay(
                  //                 color: const Color(0xFF221F1F),
                  //                 fontSize: 12,
                  //               )),
                  //           Text("Ankara, Türkiye",
                  //               style: GoogleFonts.redHatDisplay(
                  //                 color: const Color(0xFF221F1F),
                  //                 fontSize: 16,
                  //                 fontWeight: FontWeight.w600,
                  //               )),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // const SizedBox(
                  //   width: 20,
                  // ),
                  Expanded(
                      child: Container(
                    color: Colors.white,
                    height: 60,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey[300]!),
                      ),
                      child: TextFormField(
                        controller: controller.queryController.value,
                        decoration: InputDecoration.collapsed(
                            hintText:
                                "Ask me anything for Products, Brands and More",
                            hintStyle: GoogleFonts.redHatDisplay(
                              color: Colors.grey[400],
                              fontSize: 16,
                            )),
                      ),
                    ),
                  )),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      controller
                          .sendMessage(controller.queryController.value.text);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey[300]!),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.send, color: Color(0xFF221F1F)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
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
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.mic, color: Color(0xFF221F1F)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  // Container(
                  //   padding: const EdgeInsets.symmetric(
                  //     horizontal: 20,
                  //     vertical: 16,
                  //   ),
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.circular(5),
                  //     border: Border.all(color: Colors.grey[300]!),
                  //   ),
                  //   child: const Row(
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     children: [
                  //       Icon(Icons.shopping_cart_outlined,
                  //           color: Color(0xFF221F1F)),
                  //     ],
                  //   ),
                  // ),
                  // const SizedBox(
                  //   width: 20,
                  // ),
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
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.menu, color: Color(0xFF221F1F)),
                      ],
                    ),
                  ),
                ]
              : [
                  SvgPicture.network(
                    "https://upload.wikimedia.org/wikipedia/commons/a/a9/Amazon_logo.svg",
                    width: 100,
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
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.menu, color: Color(0xFF221F1F)),
                      ],
                    ),
                  ),
                ],
        ),
      );
    });
  }
}
