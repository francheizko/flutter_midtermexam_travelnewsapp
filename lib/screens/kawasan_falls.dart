import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KawasanScreen extends StatelessWidget {
  const KawasanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Transform.scale(
                  scale: 2.2, // Adjust the scale factor to zoom in
                  child: const Image(
                    image: AssetImage('assets/Experience-canyoneering-2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 65,
                  left: 20,
                  child: Container(
                    width: 60, // Adjust the width to make the icon larger
                    height: 60, // Adjust the height to make the icon larger
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          30), // Adjust the border radius accordingly
                    ),
                    child: Image.asset(
                      'assets/back-button.png',
                      width: 60, // Adjust the width to make the icon larger
                      height: 60, // Adjust the height to make the icon larger
                    ),
                  ),
                ),
                Positioned(
                  top: 65,
                  left: 310,
                  child: Container(
                    width: 60, // Adjust the width to make the icon larger
                    height: 60, // Adjust the height to make the icon larger
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          30), // Adjust the border radius accordingly
                    ),
                    child: Image.asset(
                      'assets/Bookmark-Icon.png',
                      width: 60, // Adjust the width to make the icon larger
                      height: 60, // Adjust the height to make the icon larger
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            width: 475,
            height: 413,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
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
                        fontSize: 23.5, fontWeight: FontWeight.w700),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 315,
                    height: 54,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                        border: Border.all(
                            color: const Color(0xFF9397A0), width: 0.2)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage('assets/Author-1.jpg'),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          Text(
                            'Franz Pueblos ',
                            style: GoogleFonts.poppins(
                                fontSize: 13, color: const Color(0xFF9397A0)),
                          ),
                          Text(
                            'Nov 30  ',
                            style: GoogleFonts.poppins(
                                fontSize: 13, color: const Color(0xFF9397A0)),
                          ),
                          Container(
                            // Add this Container for the circle
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
                                fontSize: 13, color: const Color(0xFF9397A0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  Text(
                    'The famous attraction in Badian is Kawasan Falls, a three-tiered cascade that has turquoise water. It is also one of the most famous waterfalls in the Philippines.Trying the tour to Kawasan Falls is an exhilarating water adventure that takes you through towering gorges and stalactite boulders.',
                    style: GoogleFonts.poppins(fontSize: 16),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
