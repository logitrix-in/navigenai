import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigenai/pages/home/product_grid.dart';
import 'package:navigenai/pages/home/topbar.dart';

class NavigenHome extends StatelessWidget {
  const NavigenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView( // Wrap the content in a SingleChildScrollView
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const TopBar(),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
                child: RichText(
                  text: TextSpan(
                    text: "Hello, ",
                    style: GoogleFonts.redHatDisplay(fontSize: 24, fontWeight: FontWeight.w800, color: Colors.black),
                    children: [
                      TextSpan(
                        text: "John Doe",
                        style: GoogleFonts.redHatDisplay(fontSize: 24, fontWeight: FontWeight.w800, color: Color(0xFFFF9900))
                      )
                    ]
                  )
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
                child: Text(
                  "Hello there! Welcome to NaviGen, your ultimate AI-powered shopping assistant. We're here to help you find the perfect gift for your 19-year-old kid. Based on popular trends and what young adults love, here are some great gift ideas:",
                  style: GoogleFonts.redHatDisplay(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  labelStyle: GoogleFonts.redHatDisplay(fontSize: 14, fontWeight: FontWeight.w500),
                  unselectedLabelStyle: GoogleFonts.redHatDisplay(fontSize: 14, fontWeight: FontWeight.w500),
                  indicatorColor: Color(0xFFFF9900),
                  indicatorWeight: 4,
                  dividerColor: Color(
                    0xFFE0E0E0,
                  ),
                  splashBorderRadius: BorderRadius.circular(5),
                  tabAlignment: TabAlignment.start,
                  isScrollable: true,
                  
                    
                  
                  tabs: const [
                    Tab(text: 'MEN'),
                    Tab(text: 'WOMEN'),
                    Tab(text: 'KIDS'),
                    Tab(text: "HOME & LIVING"),
                    Tab(text: "ELECTRONICS"),
                    Tab(text: "BEAUTY"),
                    Tab(text: "SPORT & FITNESS"),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height, // Ensure the container can scroll if content is larger than the screen
                child: TabBarView(
                  children: const [
                    ProductGridView(),
                    Center(child: Text('Tab 2 content')),
                    Center(child: Text('Tab 3 content')),
                    Center(child: Text('Tab 4 content')),
                    Center(child: Text('Tab 5 content')),
                    Center(child: Text('Tab 6 content')),
                    Center(child: Text('Tab 7 content')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
