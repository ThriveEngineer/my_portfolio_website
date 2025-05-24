import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/components/my_button.dart';
import 'package:portfolio/components/my_text_assets.dart';
import 'package:portfolio/components/my_text_icon.dart';
import 'package:portfolio/pages/about_page.dart';
import 'package:portfolio/pages/find_me_on.dart';
import 'package:portfolio/pages/home_page.dart';
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

// Certifications / Awards
final Uri _urlWdAwards = Uri.parse('https://wdawards.com/web/thrive-portfolio-site');

// Project
final Uri _urlMyle = Uri.parse('https://myle.framer.media/');
class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});
  
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

Future<void> _launchUrlWdAwards() async {
  if (!await launchUrl(_urlWdAwards)) {
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
                      // leading: null, // This is no longer needed when automaticallyImplyLeading is false
                      automaticallyImplyLeading: false,
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

                       const Divider(
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

          Expanded(
  child: SingleChildScrollView(
    child: Padding(
      padding: EdgeInsets.only(
        top: currentWidth > 600 ? 278 : 150,
        left: currentWidth > 600 ? 20 : 16,
        right: currentWidth > 600 ? 20 : 16,
      ),
      child: Column(
        children: [
          // Title Section
          Text(
            "Luis Schröder",
            style: TextStyle(
              fontSize: currentWidth > 600 ? 50 : 32,
              color: Color.fromARGB(255, 206, 205, 195),
              fontWeight: FontWeight.w600
            ),
            textAlign: TextAlign.center,
          ),

          Text(
            "Resume",
            style: TextStyle(
              fontSize: currentWidth > 600 ? 25 : 18,
              color: Color.fromARGB(255, 135, 133, 128),
              fontWeight: FontWeight.w200
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 20),

          // Certifications Section
          Text(
            "Certifications / Awards",
            style: TextStyle(
              fontSize: currentWidth > 600 ? 20 : 16,
              color: Color.fromARGB(255, 151, 151, 151)
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 10),

          // Award Container - Responsive
          Container(
            width: currentWidth > 600 
                ? 250 
                : currentWidth * 0.8, // 80% of screen width on mobile
            constraints: BoxConstraints(
              maxWidth: 350,
              minWidth: 200,
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 16, 15, 15),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Color.fromARGB(255, 40, 39, 38)),
            ),
            child: InkWell(
              onTap: () {
                _launchUrlWdAwards();
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: AspectRatio(
                  aspectRatio: 248 / 354, // Maintain original aspect ratio
                  child: Image.asset(
                    "lib/assets/wd_award.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 20),

          // Experience Section Title
          Text(
            "RELEVANT EXPERIENCE",
            style: TextStyle(
              fontSize: currentWidth > 600 ? 20 : 16,
              color: Color.fromARGB(255, 151, 151, 151)
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 10),

          // Experience Container - Responsive
          Container(
            width: double.infinity,
            constraints: BoxConstraints(
              maxWidth: currentWidth > 1200 ? 1000 : currentWidth * 0.95,
            ),
            child: Column(
              children: [
                // Work Container 1
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 16, 15, 15),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Color.fromARGB(255, 40, 39, 38)),
                  ),
                  child: currentWidth > 800 
                      ? _buildDesktopExperienceCard(
                          "April 2025 - Present",
                          "Self Employed Freelancer",
                          "Organizing and executing projects and events | Advertising | Designing posters, stickers, and more...",
                          "lib/assets/hack_club.png"
                        )
                      : _buildMobileExperienceCard(
                          "April 2025 - Present",
                          "Hack Club (Hive) Berlin Club leader",
                          "Organizing and executing projects and events | Advertising | Designing posters, stickers, and more...",
                          "lib/assets/hack_club.png"
                        ),
                ),

                SizedBox(height: 20),

                // Work Container 2
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 16, 15, 15),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Color.fromARGB(255, 40, 39, 38)),
                  ),
                  child: currentWidth > 800 
                      ? _buildDesktopExperienceCard(
                          "May 2024 - Present",
                          "Self Employed Developer",
                          "Developing and Designing apps and websites | Advertising | more...",
                          "lib/assets/thrive_logo.png"
                        )
                      : _buildMobileExperienceCard(
                          "May 2024 - Present",
                          "Self Employed Developer",
                          "Developing and Designing apps and websites | Advertising | more...",
                          "lib/assets/thrive_logo.png"
                        ),
                ),
              ],
            ),
          ),
          SizedBox(height: currentWidth > 600 ? 278 : 150),
        ]
      ),
    ),
  ),
),
        ],
      ),
    );
  }
  Widget _buildDesktopExperienceCard(String period, String title, String description, String imagePath) {
  return Container(
    height: 315,
    child: Row(
      children: [
        // Text Section
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 52, 51, 49),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Color.fromARGB(255, 73, 71, 69)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      period,
                      style: TextStyle(
                        color: Color.fromARGB(255, 147, 147, 147),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 15),

                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 206, 205, 195)
                  )
                ),

                SizedBox(height: 10),

                Text(
                  description,
                  style: TextStyle(
                    color: Color.fromARGB(255, 147, 147, 147),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),

        // Image Section
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildMobileExperienceCard(String period, String title, String description, String imagePath) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Column(
      children: [
        // Image Section - Top on mobile
        Container(
          width: double.infinity,
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),

        SizedBox(height: 20),

        // Text Section - Bottom on mobile
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 52, 51, 49),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Color.fromARGB(255, 73, 71, 69)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  period,
                  style: TextStyle(
                    color: Color.fromARGB(255, 147, 147, 147),
                    fontSize: 12,
                  ),
                ),
              ),
            ),

            SizedBox(height: 15),

            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 206, 205, 195)
              )
            ),

            SizedBox(height: 10),

            Text(
              description,
              style: TextStyle(
                color: Color.fromARGB(255, 147, 147, 147),
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
}