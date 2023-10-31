import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:flutter_midtermexam_travelnewsapp/models/postsdata.dart";

class AuthorScreen extends StatefulWidget {
  const AuthorScreen({Key? key}) : super(key: key);

  @override
  AuthorScreenState createState() => AuthorScreenState();
}

class AuthorScreenState extends State<AuthorScreen> {
  bool isFollowing = false;
  bool isExpanded = false;

  void toggleFollowing() {
    setState(() {
      isFollowing = !isFollowing;
    });
  }

  void toggleExpand() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFF83B1FF),
                      image: const DecorationImage(
                        image: AssetImage('assets/Author-1.jpg'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Franz Pueblos',
                        style: GoogleFonts.sourceSans3(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Author & Writer',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 38,
                  ),
                  GestureDetector(
                    onTap: toggleFollowing,
                    child: Container(
                      height: 42,
                      width: 109,
                      decoration: BoxDecoration(
                        color: isFollowing
                            ? const Color(0xFF5474FD)
                            : const Color(0xFF83B1FF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        isFollowing ? 'Following' : 'Follow',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: toggleExpand,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Exploring the world one word at a time, where every sentence is an adventure and every page is a new journey. The world of love is where dreams come to life.',
                      maxLines: isExpanded ? null : 2,
                      overflow: isExpanded ? null : TextOverflow.clip,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: const Color(0xFF9397A0),
                      ),
                    ),
                    if (!isExpanded)
                      Text(
                        '...',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0xFF9397A0),
                        ),
                        textAlign: TextAlign.center,
                      ),
                  ],
                ),
              ),
              const SizedBox(
                height: 33,
              ),
              Container(
                width: 315,
                height: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xFF19202D),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '54.21K',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Followers',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const VerticalDivider(
                      color: Colors.white,
                      thickness: 0.2,
                      width: 30,
                      endIndent: 25,
                      indent: 25,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Center the text vertically
                      children: [
                        Text(
                          '2.11K',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Posts',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const VerticalDivider(
                      color: Colors.white,
                      thickness: 0.2,
                      width: 30,
                      endIndent: 25,
                      indent: 25,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Center the text vertically
                      children: [
                        Text(
                          '36.40K',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Followers',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Franz's Post",
                    style: GoogleFonts.sourceSans3(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 187,
                  ),
                  Text(
                    "View All",
                    style: GoogleFonts.poppins(
                        fontSize: 12, color: const Color(0xFF5474FD)),
                  ),
                ],
              ),
              const SizedBox(
                height: 19,
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: posts.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: ((context, index) {
                    PostsData post = posts[index];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.transparent,
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.blueGrey.withOpacity(0.051),
                                    offset: const Offset(0.0, 3.0),
                                    blurRadius: 24.0,
                                    spreadRadius: 0.0,
                                  )
                                ]),
                            child: Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(post.image),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 19,
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  post.type,
                                  style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      color: const Color(0xFF9397A0)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  post.title,
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/calendar_icon.svg'),
                                        Text(
                                          post.date,
                                          style: GoogleFonts.poppins(
                                              fontSize: 10,
                                              color: const Color(0xFF9397A0)),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/time_icon.svg'),
                                        Text(
                                          post.time,
                                          style: GoogleFonts.poppins(
                                              fontSize: 10,
                                              color: const Color(0xFF9397A0)),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
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
                    'Popular From Franz',
                    style: GoogleFonts.sourceSans3(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 143,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    PostsData post = posts[index];
                    return Container(
                      height: 143,
                      width: 248,
                      margin: const EdgeInsets.only(
                        right: 15,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          16,
                        ),
                        child: Image.asset(
                          post.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
