import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mesh_gradient/mesh_gradient.dart';
import 'package:navigenai/pages/home/home.dart';
import 'package:page_transition/page_transition.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: MeshGradient(
            options: MeshGradientOptions(),
            points: [
              MeshGradientPoint(
                position: const Offset(0.5, 0.5), // Center for yellow
                color: const Color.fromARGB(255, 255, 195, 104), // Very Light Yellow
              ),
              MeshGradientPoint(
                position: const Offset(0.0, 0.0), // Top-left white
                color: Colors.white, // Pure White
              ),
              MeshGradientPoint(
                position: const Offset(1.0, 0.0), // Top-right white
                color: Colors.white, // Pure White
              ),
              MeshGradientPoint(
                position: const Offset(0.0, 1.0), // Bottom-left white
                color: Colors.white, // Pure White
              ),
              MeshGradientPoint(
                position: const Offset(1.0, 1.0), // Bottom-right white
                color: Colors.white, // Pure White
              ),
            ],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to NaviGen",
                    style: GoogleFonts.redHatDisplay(
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(255, 192, 115, 0)),
                  ).animate().then(
                      delay: Durations.long1, duration: Durations.long1
                  ).fade(),
                  const SizedBox(height: 10).animate().then(
                      delay: Durations.long1, duration: Durations.long1
                  ).fade(),
                  
                  Text(
                    "Your ultimate AI-powered shopping assistant",
                    style: GoogleFonts.redHatDisplay(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ).animate().then(
                      delay: Durations.long1, duration: Durations.long1
                  ).fade(
                    delay: Durations.long1,
                    duration: Durations.long1,
                  
                  ),
                  const SizedBox(
                    height: 50,
                  
                  ),
                  ElevatedButton(
                    
                    onPressed: () {
                      // Navigator.pushNamed(context, '/home');
                      Navigator.push(context, PageTransition(child: const NavigenHome(), type: PageTransitionType.bottomToTopPop,childCurrent: this,duration: Durations.extralong4,curve: Easing.linear,opaque: false,matchingBuilder: const FadeUpwardsPageTransitionsBuilder(),fullscreenDialog: true));
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color.fromARGB(255, 192, 115, 0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Get Started",
                      style: GoogleFonts.redHatDisplay(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ).animate().then(
                      delay: Durations.long1, duration: Durations.long1
                  ).fade(
                    delay: Durations.long1,
                    duration: Durations.long1,
                  ),
                  
                ],
              ),
            ),
          )),
    );
  }
}
