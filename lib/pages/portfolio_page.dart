import 'package:flutter/material.dart';
import 'package:portfolio/components/my_button.dart';
import 'package:portfolio/components/my_text_assets.dart';
import 'package:portfolio/components/my_text_icon.dart';
import 'package:portfolio/pages/about_page.dart';
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

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});
  
  @override
  Widget build(BuildContext context) {

    Future<void> _launchUrlGithub() async {
  if (!await launchUrl(_urlGithub)) {
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

    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: [

          // Sidebar
          Expanded(
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
                                "lib/assets/thrive_logo.png",
                                width: 45,
                                height: 45,
                                ),
                            ),

                            const SizedBox(width: 13,),

                          const Text(
                            "Thrive Engineer",
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
                        },
                       ),

                       const SizedBox(height: 10,),

                       MyButton(text: "About", icon: Icons.info_rounded, onTap: () {
                        Navigator.of(context).push(_AboutRoute());
                       }),

                       const SizedBox(height: 10,),

                       MyButton(text: "Resume", icon: Icons.description_rounded, onTap: ()
                       {
                        Navigator.of(context).push(_PortfolioRoute());
                       },
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
          ),

          // Site
          Expanded(
              child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 278),
                      child: Column(
                        children: [

                          Text(
                            "Luis Schröder",
                            style: TextStyle(
                              fontSize: 50,
                              color: Color.fromARGB(255, 206, 205, 195),
                              fontWeight: FontWeight.w600
                            ),
                            ),

                            Text(
                            "Resume",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 135, 133, 128),
                              fontWeight: FontWeight.w200
                            ),
                            ),

                            SizedBox(height: 20,),

                            Text("Certifications / Awards",
                            style: TextStyle(
                              fontSize: 20, 
                              color: Color.fromARGB(255, 151, 151, 151)
                              ),
                             ),

                             SizedBox(height: 10,),
                
                          // Work Container
                            Container(
                              width: 1000,
                              height: 630,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 16, 15, 15),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Color.fromARGB(255, 40, 39, 38)),
                              ),
                              child: Row(
                                children: [
                                            
                                  // Text Section
                                  Padding(
                                    padding: const EdgeInsets.only(top: 280, left: 300),
                                    child: Column(
                                      children: [
                                            
                                        // Heading Text
                                           Text("Nothing here yet!",
                                            style: TextStyle(
                                              fontSize: 50,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromARGB(255, 206, 205, 195)
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                
                          SizedBox(height: 20,),

                          Text("RELEVANT EXPERIENCE",
                            style: TextStyle(
                              fontSize: 20, 
                              color: Color.fromARGB(255, 151, 151, 151)
                              ),
                             ),

                             SizedBox(height: 10,),
                
                          Container(
                            width: 1005,
                            child: Column(
                              children: [
                            
                                // Work Container 1
                                  Container(
                              width: 1000,
                              height: 315,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 16, 15, 15),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Color.fromARGB(255, 40, 39, 38)),
                              ),
                              child: Row(
                                children: [
                                            
                                  // Text Section
                                  Padding(
                                    padding: const EdgeInsets.only(top: 100, left: 30),
                                    child: Column(
                                      children: [

                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(255, 52, 51, 49),
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(color: Color.fromARGB(255, 73, 71, 69)),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text(
                                              "October 2024 - Present",
                                              style: TextStyle(
                                                color: Color.fromARGB(255, 147, 147, 147),
                                              ),
                                              ),
                                          ),
                                        ),

                                        SizedBox(height: 10,),
                                            
                                        // Heading Text
                                           Text("Self Employed Freelancer",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromARGB(255, 206, 205, 195)
                                            )),
                                            
                                            Container(
                                                width: 500,
                                                child: Column(
                                                  children: [
                                            
                                                    // Description Text
                                                    Text(
                                                      "Developing Mobile Flutter Apps,",
                                                      style: TextStyle(
                                                        color: Color.fromARGB(255, 147, 147, 147),
                                                        fontSize: 16,
                                                      ),
                                                      ),
                                            
                                                      Text(
                                                        " as a Freelancer on Fiverr and Upwork.",
                                                        style: TextStyle(
                                                        color: Color.fromARGB(255, 147, 147, 147),
                                                        fontSize: 16,
                                                      ),
                                                     ),
                                                  ],
                                                ),
                                              ),
                                      ],
                                    ),
                                  ),
                                            
                                  // Image
                                        Padding(
                                          padding: const EdgeInsets.only(left: 170),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(8),
                                            child: Image.asset(
                                              "lib/assets/self_employed.png", 
                                              width: 285, height: 285,
                                              ),
                                          ),
                                        ),
                                ],
                              ),
                            ),

                            SizedBox(height: 20,),

                            // Work Container 2
                                  Container(
                              width: 1000,
                              height: 315,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 16, 15, 15),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Color.fromARGB(255, 40, 39, 38)),
                              ),
                              child: Row(
                                children: [
                                            
                                  // Text Section
                                  Padding(
                                    padding: const EdgeInsets.only(top: 100, left: 30),
                                    child: Column(
                                      children: [

                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(255, 52, 51, 49),
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(color: Color.fromARGB(255, 73, 71, 69)),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text(
                                              "May 2024 - Present",
                                              style: TextStyle(
                                                color: Color.fromARGB(255, 147, 147, 147),
                                              ),
                                              ),
                                          ),
                                        ),

                                        SizedBox(height: 10,),
                                            
                                        // Heading Text
                                           Text("Self Employed Developer",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromARGB(255, 206, 205, 195)
                                            )),
                                            
                                            Container(
                                                width: 500,
                                                child: Column(
                                                  children: [
                                            
                                                    // Description Text
                                                    Text(
                                                      "Developing Open Source stuff.",
                                                      style: TextStyle(
                                                        color: Color.fromARGB(255, 147, 147, 147),
                                                        fontSize: 16,
                                                      ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                      ],
                                    ),
                                  ),
                                            
                                  // Image
                                        Padding(
                                          padding: const EdgeInsets.only(left: 170),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(8),
                                            child: Image.asset(
                                              "lib/assets/thrive_logo.png", 
                                              width: 285, height: 285,
                                              ),
                                          ),
                                        ),
                                ],
                              ),
                            ),

                              ],
                            ),
                          ),
                          SizedBox(height: 278,),
                      ]),
                    ),
              ),
          ),
        ],
      ),
    );
  }
}