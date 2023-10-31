import 'package:flutter/material.dart';
import 'package:flutter_midtermexam_travelnewsapp/screens/author_profie.dart';
import 'package:flutter_midtermexam_travelnewsapp/screens/imageswipe.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_midtermexam_travelnewsapp/screens/bottom_navbar.dart'; // Import your custom BottomNavBar

class KawasanScreen extends StatelessWidget {
  const KawasanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            // FullScreenSlider
            const Positioned.fill(
              child: FullScreenSlider(),
            ),

            // Back Button
            Positioned(
              top: 65,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset(
                    'assets/back-button.png',
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
            ),

            // Bookmark Icon
            Positioned(
              top: 65,
              left: 310,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Image.asset(
                  'assets/Bookmark-Icon.png',
                  width: 60,
                  height: 60,
                ),
              ),
            ),

            // Container at the bottom of the screen
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: 413,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(42),
                    topRight: Radius.circular(42),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 27,
                      ),
                      Text(
                        'Experience Canyoneering to Kawasan Falls',
                        style: GoogleFonts.poppins(
                          fontSize: 23.5,
                          fontWeight: FontWeight.w700,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const AuthorScreen(),
                            ),
                          );
                        },
                        child: Container(
                          width: 315,
                          height: 54,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.transparent,
                            border: Border.all(
                              color: const Color(0xFF9397A0),
                              width: 0.2,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 15,
                                  backgroundImage:
                                      AssetImage('assets/Author-1.jpg'),
                                ),
                                const SizedBox(
                                  width: 13,
                                ),
                                Text(
                                  'Franz Pueblos ',
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    color: const Color(0xFF9397A0),
                                  ),
                                ),
                                Text(
                                  'Nov 30  ',
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    color: const Color(0xFF9397A0),
                                  ),
                                ),
                                Container(
                                  width: 4,
                                  height: 4,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF9397A0),
                                  ),
                                ),
                                Text(
                                  '  8 min read',
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    color: const Color(0xFF9397A0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      Text(
                        'The famous attraction in Badian is Kawasan Falls, a three-tiered cascade that has turquoise water. It is also one of the most famous waterfalls in the Philippines. Trying the tour to Kawasan Falls is an exhilarating water adventure that takes you through towering gorges and stalactite boulders.',
                        style: GoogleFonts.poppins(fontSize: 16),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavBar(
          selectedindex: 0, // Adjust the selected index accordingly
          onItemTapped: (index) {
            // Handle navigation to different screens here
          },
        ));
  }
}
