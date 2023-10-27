import 'package:flutter/material.dart';
import 'package:flutter_midtermexam_travelnewsapp/models/shortsdata.dart';
import 'package:flutter_midtermexam_travelnewsapp/screens/kawasan_falls.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:flutter_midtermexam_travelnewsapp/models/articledata.dart";

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
                        image: AssetImage('assets/logo.jpg'))),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'GUIDE TO THE',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'PHILIPPINES',
                    style: GoogleFonts.poppins(
                      fontSize: 16, // Adjust the font size
                      fontWeight: FontWeight.w700,
                      height: 0.9, // Adjust the lineHeight
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Welcome back, User!',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color(0xFF9397A0),
                    ),
                  )
                ],
              )
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
                '#Philippines',
                style: GoogleFonts.poppins(
                    fontSize: 12, color: const Color(0xFF9397A0)),
              ),
              const SizedBox(
                width: 32,
              ),
              Text(
                '#Cebu',
                style: GoogleFonts.poppins(
                    fontSize: 12, color: const Color(0xFF9397A0)),
              ),
              const SizedBox(
                width: 32,
              ),
              Text(
                '#Islands',
                style: GoogleFonts.poppins(
                    fontSize: 12, color: const Color(0xFF9397A0)),
              ),
              const SizedBox(
                width: 32,
              ),
              Text(
                '#Nature',
                style: GoogleFonts.poppins(
                    fontSize: 12, color: const Color(0xFF9397A0)),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            height: 304,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: articles.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                ArticleData article = articles[index];
                return GestureDetector(
                  onTap: () {
                    if (article.title ==
                        'Experience Canyoneering to Kawasan Falls') {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const KawasanScreen(),
                        ),
                      );
                    }
                  },
                  child: Container(
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
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(article.image))),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Flexible(
                            child: Text(
                          article.title,
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
                            CircleAvatar(
                              radius: 19,
                              backgroundImage: AssetImage(article.authorimage),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  article.author,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  article.date,
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: const Color(0xFF9397A0)),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 38,
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
              itemCount: shorts.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                ShortsData short = shorts[index];
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
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(short.image),
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
                                  short.title,
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
                                    short.views,
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
