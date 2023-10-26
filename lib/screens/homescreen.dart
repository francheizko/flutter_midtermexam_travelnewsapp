import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            children: [
          const SizedBox(
            height: 26,
          ),
          Row(
            children: [
              Container(
                height: 51,
                width: 51,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xFF83B1FF),
                    image: const DecorationImage(
                        image: AssetImage('assets/profile-icon.jpg'))),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                children: [
                  Text(
                    'Welcome Back!',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Saturday, 28 October',
                    style: GoogleFonts.poppins(
                        fontSize: 12, color: const Color(0xFF9397A0)),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            height: 49,
            width: 315,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: GoogleFonts.poppins(fontSize: 12),
                    decoration: InputDecoration(
                      hintText: 'Search for articles...',
                      hintStyle: GoogleFonts.poppins(fontSize: 12),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  width: 47,
                  height: 49,
                  decoration: BoxDecoration(
                    color: const Color(0xFF5474FD),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.search,
                      color: Color(0xFFF5F5F5),
                      size: 35,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                '#Health',
                style: GoogleFonts.poppins(
                    fontSize: 12, color: const Color(0xFF9397A0)),
              ),
              const SizedBox(
                width: 35,
              ),
              Text(
                '#Music',
                style: GoogleFonts.poppins(
                    fontSize: 12, color: const Color(0xFF9397A0)),
              ),
              const SizedBox(
                width: 35,
              ),
              Text(
                '#Technology',
                style: GoogleFonts.poppins(
                    fontSize: 12, color: const Color(0xFF9397A0)),
              ),
              const SizedBox(
                width: 35,
              ),
              Text(
                '#Sports',
                style: GoogleFonts.poppins(
                    fontSize: 12, color: const Color(0xFF9397A0)),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 304,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(right: 20),
                  height: 304,
                  width: 255,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey.withOpacity(0.051),
                          offset: const Offset(0.0, 3.0),
                          blurRadius: 24.0,
                          spreadRadius: 0.0,
                        )
                      ]),
                  child: Column(
                    children: [
                      Container(
                        height: 164,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/Experience-canyoneering.jpg'))),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Flexible(
                          child: Text(
                        'Experience Canyoneering to Kawasan Falls',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                      )),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 19,
                            backgroundImage: AssetImage('assets/Author-1.jpg'),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Franz Pueblos',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Nov 30, 2023',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: const Color(0xFF9397A0)),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 55,
                          ),
                          Container(
                            height: 37,
                            width: 37,
                            decoration: BoxDecoration(
                                color: const Color(0xFFF5F5F5),
                                borderRadius: BorderRadius.circular(12),
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/Share-icon.png'))),
                          )
                        ],
                      )
                    ],
                  ),
                );
              }),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                'Short For You',
                style: GoogleFonts.poppins(
                    fontSize: 17, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 160,
              ),
              Text(
                'View All',
                style: GoogleFonts.poppins(
                    fontSize: 12, color: const Color(0xFF5474FD)),
              ),
            ],
          ),
          const SizedBox(
            height: 19,
          ),
          SizedBox(
            height: 88,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return Container(
                    padding: const EdgeInsets.all(9),
                    margin: const EdgeInsets.only(right: 20),
                    height: 88,
                    width: 208,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white70,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.051),
                            offset: const Offset(0.0, 3.0),
                            blurRadius: 24.0,
                            spreadRadius: 0.0,
                          )
                        ]),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/Experience-canyoneering.jpg'),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Image.asset(
                                  'assets/Play-button-icon.jpg',
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  'Whale Shark Watching Tour',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/Views-icon.jpg',
                                      width: 16, height: 16),
                                  const SizedBox(width: 6),
                                  Text(
                                    '43,120',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: const Color(0xFF9397A0),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ));
              }),
            ),
          ),
        ]));
  }
}
