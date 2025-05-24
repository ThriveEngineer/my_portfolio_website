import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/components/my_button.dart';
import 'package:portfolio/components/my_text_assets.dart';
import 'package:portfolio/components/my_text_icon.dart';
import 'package:portfolio/pages/find_me_on.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:portfolio/pages/portfolio_page.dart';
import 'package:url_launcher/url_launcher.dart';

// F I N D   M E   O N
final Uri _urlGithub = Uri.parse('https://github.com/ThriveEngineer');
final Uri _urlReddit = Uri.parse('https://www.reddit.com/user/kresstein');
final Uri _urlBluesky = Uri.parse('https://bsky.app/profile/thriveengineer.bsky.social');
final Uri _urlThreads = Uri.parse('https://www.threads.net/@thrive.dev');
final Uri _urlMastodon = Uri.parse('https://mastodon.social/@ThriveEngineer');
final Uri _urlRead = Uri.parse('https://read.cv/thrive.dev');
final Uri _urlKofi = Uri.parse('https://ko-fi.com/thriveengineer');

// H I R E   M E
final Uri _urlUpwork = Uri.parse('https://www.upwork.com/freelancers/~01f5b2ffcbe90b7e83?mp_source=share');
final Uri _urlFiverr = Uri.parse('https://www.fiverr.com/kresstein?source=gig_page&gigs=slug%3Adevelop-a-mobile-app-for-you%2Cpckg_id%3A1&ref=seller_language%3Ade%7Cgig_price_range%3A0%2C120');

// Project
final Uri _urlMyle = Uri.parse('https://myle.framer.media/');

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {

    Future<void> _launchUrlGithub() async {
  if (!await launchUrl(_urlGithub)) {
    throw Exception('Could not launch');
  }
}

Future<void> _launchUrlMyle() async {
  if (!await launchUrl(_urlMyle)) {
    throw Exception('Could not launch');
  }
}

Future<void> _launchUrlReddit() async {
  if (!await launchUrl(_urlReddit)) {
    throw Exception('Could not launch');
  }
}

Future<void> _launchUrlBluesky() async {
  if (!await launchUrl(_urlBluesky)) {
    throw Exception('Could not launch');
  }
}

Future<void> _launchUrlThreads() async {
  if (!await launchUrl(_urlThreads)) {
    throw Exception('Could not launch');
  }
}

Future<void> _launchUrlMastodon() async {
  if (!await launchUrl(_urlMastodon)) {
    throw Exception('Could not launch');
  }
}

Future<void> _launchUrlRead() async {
  if (!await launchUrl(_urlRead)) {
    throw Exception('Could not launch');
  }
}

Future<void> _launchUrlKofi() async {
  if (!await launchUrl(_urlKofi)) {
    throw Exception('Could not launch');
  }
}

Future<void> _launchUrlUpwork() async {
  if (!await launchUrl(_urlUpwork)) {
    throw Exception('Could not launch');
  }
}

Future<void> _launchUrlFiverr() async {
  if (!await launchUrl(_urlFiverr)) {
    throw Exception('Could not launch');
  }
}

Route _PortfolioRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const PortfolioPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
  const begin = Offset(0.0, 0.0);
  const end = Offset.zero;
  final tween = Tween(begin: begin, end: end);
  final offsetAnimation = animation.drive(tween);
  return child;
},
  );
}

Route _AboutRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const AboutPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
  const begin = Offset(0.0, 0.0);
  const end = Offset.zero;
  final tween = Tween(begin: begin, end: end);
  final offsetAnimation = animation.drive(tween);
  return child;
},
  );
}

Route _HomeRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
  const begin = Offset(0.0, 0.0);
  const end = Offset.zero;
  final tween = Tween(begin: begin, end: end);
  final offsetAnimation = animation.drive(tween);
  return child;
},
  );
}

Route _FindMeOnRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const FindMeOn(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
  const begin = Offset(0.0, 0.0);
  const end = Offset.zero;
  final tween = Tween(begin: begin, end: end);
  final offsetAnimation = animation.drive(tween);
  return child;
},
  );
}

final mediaQueryData = MediaQuery.of(context);
 final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: currentWidth < 1400
            ? PreferredSize(
                preferredSize: Size.fromHeight(kToolbarHeight), // Default AppBar height
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 120.0, sigmaY: 120.0), // Adjust blur intensity
                    child: AppBar(
                      title: Row(
                        children: [
                          ClipOval(
                              child: Image.asset(
                                "lib/assets/Luis.png",
                                width: 35,
                                height: 35,
                                ),
                            ),
                            
                            SizedBox(width: 10,),

                          Text(
                                "Luis S.",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 206, 205, 195),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "MonaSans",
                                ),
                                ),
                        ],
                      ),
                      // leading: null, // This is no longer needed when automaticallyImplyLeading is false
                      automaticallyImplyLeading: false,
                      actions: [
                        MyButton(text: currentWidth > 750 ? "Portfolio" : "", icon: Icons.folder_rounded, onTap: () {
                          Navigator.of(context).push(_HomeRoute());
                        }, sizedBox: currentWidth > 600 ? 9 : 0,
                       ),

                       const SizedBox(width: 10,),

                       MyButton(text: currentWidth > 750 ? "About" : "", icon: Icons.info_rounded, onTap: () {
                        Navigator.of(context).push(_AboutRoute());
                       }, sizedBox: currentWidth > 600 ? 9 : 0,
                       ),

                       const SizedBox(width: 10,),

                       MyButton(text: currentWidth > 750 ? "Resume" : "", icon: Icons.description_rounded, onTap: ()
                       {
                        Navigator.of(context).push(_PortfolioRoute());
                       }, sizedBox: currentWidth > 600 ? 9 : 0,
                       ),

                       const SizedBox(width: 10,),

                       MyButton(text: currentWidth > 750 ? "Find me on" : "", icon: Icons.add_box_rounded, onTap: () {
                          Navigator.of(context).push(_FindMeOnRoute());
                        }, sizedBox: currentWidth > 600 ? 9 : 0,
                       ),

                       SizedBox(width: 20,),
                      ],
                      elevation: 0,
                      backgroundColor: const Color.fromARGB(14, 24, 24, 24), // Make color semi-transparent
                    ),
                  ),
                ),
              )
            : null,
      body: Row(
        children: [

          // Sidebar
          currentWidth > 1400 ? Expanded(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
              child: Container(
                width: 266,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 16, 15, 15),
                  border: Border.all(color: const Color.fromARGB(255, 40, 39, 38)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                            ClipOval(
                              child: Image.asset(
                                "lib/assets/Luis.png",
                                width: 45,
                                height: 45,
                                ),
                            ),

                            const SizedBox(width: 13,),

                          const Text(
                            "Luis Schröder",
                            style: TextStyle(
                              color: Color.fromARGB(255, 206, 205, 195),
                              fontWeight: FontWeight.w600,
                              fontFamily: "MonaSans",
                            ),
                            ),
                        ],
                      ),

                      const SizedBox(height: 15,),

                      const Divider(
                        color: Color.fromARGB(255, 41, 40, 38),
                        indent: 0,
                        endIndent: 0,
                        ),

                        const SizedBox(height: 15,),

                        const Text("P A G E S",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 88, 89, 90)
                        ),
                        ),

                        const SizedBox(height: 10,),

                        MyButton(text: "Portfolio", icon: Icons.folder_rounded, onTap: () {
                          Navigator.of(context).push(_HomeRoute());
                        }, sizedBox: 9,
                       ),

                       const SizedBox(height: 10,),

                       MyButton(text: "About", icon: Icons.info_rounded, onTap: () {
                        Navigator.of(context).push(_AboutRoute());
                       }, sizedBox: 9,
                       ),

                       const SizedBox(height: 10,),

                       MyButton(text: "Resume", icon: Icons.description_rounded, onTap: ()
                       {
                        Navigator.of(context).push(_PortfolioRoute());
                       }, sizedBox: 9,
                       ),

                       const SizedBox(height: 15,),

                        Divider(
                          color: Color.fromARGB(255, 41, 40, 38),
                          indent: 0,
                          endIndent: 0,
                        ),

                        const SizedBox(height: 15,),

                        MyTextAssets(name: "lib/assets/myle_logo.png", text: "Myle", onTap: () {
                         _launchUrlMyle();
                       }
                       ),

                       const SizedBox(height: 15,),

                       const Divider(
                        color: Color.fromARGB(255, 41, 40, 38),
                        indent: 0,
                        endIndent: 0,
                        ),

                        const SizedBox(height: 15,),

                        const Text("F I N D   M E   O N",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 88, 89, 90)
                        ),
                        ),

                        const SizedBox(height: 10,),

                        MyTextIcon(icon: Icons.reddit_rounded, text: "Reddit", onTap: () {
                          _launchUrlReddit();
                        },
                       ),

                       const SizedBox(height: 15,),

                       MyTextAssets(name: "lib/assets/bluesky.jpg", text: "Bluesky", onTap: () {
                         _launchUrlBluesky();
                       }
                       ),

                       const SizedBox(height: 15,),

                       MyTextAssets(name: "lib/assets/threads.jpg", text: "Threads", onTap: () {
                         _launchUrlThreads();
                       }
                       ),

                       const SizedBox(height: 15,),

                       MyTextAssets(name: "lib/assets/mastodon.jpg", text: "Mastodon", onTap: () {
                         _launchUrlMastodon();
                       }
                       ),

                       const SizedBox(height: 15,),

                       MyTextAssets(name: "lib/assets/read.jpg", text: "read.cv", onTap: () {
                         _launchUrlRead();
                       }
                       ),

                       const SizedBox(height: 15,),

                       MyTextAssets(name: "lib/assets/github.jpg", text: "GitHub", onTap: () {
                         _launchUrlGithub();
                       }
                       ),

                       const SizedBox(height: 15,),

                       MyTextAssets(name: "lib/assets/kofi.jpg", text: "Kofi", onTap: () {
                         _launchUrlKofi();
                       }
                       ),

                       const SizedBox(height: 15,),

                       const Divider(
                        color: Color.fromARGB(255, 41, 40, 38),
                        indent: 0,
                        endIndent: 0,
                       ),

                       const SizedBox(height: 15,),

                       const Text(
                        "H I R E   M E",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 88, 89, 90)
                        ),
                        ),

                        const SizedBox(height: 10,),

                        MyTextAssets(name: "lib/assets/upwork.jpg", text: "Upwork", onTap: () {
                          _launchUrlUpwork();
                        },
                       ),

                       const SizedBox(height: 15,),

                       MyTextAssets(name: "lib/assets/fiverr.png", text: "Fiverr", onTap: () {
                        _launchUrlFiverr();
                       },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ) : SizedBox(width: 0,),

          // Site
          Expanded(
              child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 105, left: 25, right: 25),
                      child: Column(
                        children: [
                        Text(
                          "Luis Schröder",
                          style: TextStyle(
                            fontSize: currentWidth > 800 ? 50 : currentWidth > 480 ? 32 : 24,
                            color: Color.fromARGB(255, 206, 205, 195),
                          ),
                          ),

                          Text(
                            "Flutter Cross Platform Developer",
                            style: TextStyle(
                              fontSize: currentWidth > 800 ? 25 : currentWidth > 480 ? 18 : 14,
                              color: Color.fromARGB(255, 135, 133, 128),
                              fontWeight: FontWeight.w200
                            ),
                            ),

                            SizedBox(height: 45,),

                            Container(
                              width: 1000,
                              child: Text(
                                "Hi, I'm Luis, a cross-platform developer from Berlin, Germany. Despite being in 8th grade, I've already been developing mobile applications for over two years, primarily using Dart and the Flutter framework to create apps that work across different platforms.",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 151, 151, 151),
                                  fontWeight: FontWeight.w200
                                ),
                                ),
                            ),

                            SizedBox(height: 20,),

                            Container(
                              width: 1000,
                              child: Text("Beyond my school work and coding, I'm passionate about several hobbies. I love the art of coffee-making and enjoy experimenting with different brewing methods. I'm also into digital drawing, which lets me combine my technical skills with artistic expression. One of my favorite hobbies is building custom keyboards - there's something special about crafting the perfect typing experience. I've also gotten into 3D printing, which allows me to bring my digital designs into the real world. When I'm not doing any of these things, you might find me DJing, mixing tracks, and creating new soundscapes."
                              ,style: TextStyle(
                                fontSize: 20,
                                    color: Color.fromARGB(255, 151, 151, 151),
                                    fontWeight: FontWeight.w200
                              )),
                            ),
                      ]),
                    ),
              ),
          ),
        ],
      ),
    );
  }
}