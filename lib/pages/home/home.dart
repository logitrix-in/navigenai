import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigenai/pages/home/controller/home_controller.dart';
import 'package:navigenai/pages/home/product_grid.dart';
import 'package:navigenai/pages/home/topbar.dart';

class NavigenHome extends StatelessWidget {
  const NavigenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (controller) => Obx(()=> DefaultTabController(
        length: controller.categories.length, // Number of tabs
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                 TopBar(
                  controller: controller,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1),
                  child: RichText(
                          text: TextSpan(
                              text: "Hello, ",
                              style: GoogleFonts.redHatDisplay(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                              children: [
                        TextSpan(
                            text: "John Doe",
                            style: GoogleFonts.redHatDisplay(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                                color: const Color(0xFFFF9900)))
                      ]))
                      .animate()
                      .then(delay: Durations.long1, duration: Durations.long1)
                      .fade(),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1),
                  child: Text(
                    controller.messages.value,
                    style: GoogleFonts.redHatDisplay(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  )
                      .animate()
                      .then(delay: Durations.long1, duration: Durations.long1)
                      .fade(),
                ),
                const SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    labelStyle: GoogleFonts.redHatDisplay(
                        fontSize: 14, fontWeight: FontWeight.w500),
                    unselectedLabelStyle: GoogleFonts.redHatDisplay(
                        fontSize: 14, fontWeight: FontWeight.w500),
                    indicatorColor: const Color(0xFFFF9900),
                    indicatorWeight: 4,
                    dividerColor: const Color(
                      0xFFE0E0E0,
                    ),
                    splashBorderRadius: BorderRadius.circular(5),
                    tabAlignment: TabAlignment.start,
                    isScrollable: true,
                    tabs: controller.categories,
                    
                    onTap: (value) {
                      controller.fetchProduct(
                          controller.categories[value].text.toString()
                      );
                      // Change Tab Bar 

                      DefaultTabController.of(context).animateTo(value);
                      
                    },
                  ),
                )
                    .animate()
                    .then(delay: Durations.long1, duration: Durations.long1)
                    .fade(),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: SizedBox(
                    height: MediaQuery.of(context)
                        .size
                        .height, // Ensure the container can scroll if content is larger than the screen
                    child:  TabBarView(
                      
                      children: controller.categories.length > 0 ? controller.categories.map((element) => ProductGridView(
                        products: controller.products,
                      ),).toList() : [],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    )
    );
  }
}
