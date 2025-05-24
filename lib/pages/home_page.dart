import 'package:flutter/material.dart';
import 'package:portfolio/components/my_button.dart';
import 'package:portfolio/components/my_text_assets.dart';
import 'package:portfolio/components/my_text_icon.dart';
import 'package:portfolio/pages/about_page.dart';
import 'package:portfolio/pages/find_me_on.dart';
import 'package:portfolio/pages/portfolio_page.dart';
import 'dart:ui'; // Import for ImageFilter
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

// Projects
final Uri _urlBraveApi = Uri.parse('https://github.com/ThriveEngineer/brave_api');
final Uri _urlGriveSearch = Uri.parse('https://github.com/ThriveEngineer/Grive-Search');
final Uri _urlNothingNotes = Uri.parse('https://github.com/ThriveEngineer/nothing.notes');
final Uri _urlMessages = Uri.parse('https://github.com/ThriveEngineer/messages');

// Project
final Uri _urlMyle = Uri.parse('https://myle.framer.media/');
class HomePage extends StatelessWidget {
  const HomePage({super.key});

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

Future<void> _launchUrlBraveApi() async {
  if (!await launchUrl(_urlBraveApi)) {
    throw Exception('Could not launch');
  }
}

Future<void> _launchUrlGriveSearch() async {
  if (!await launchUrl(_urlGriveSearch)) {
    throw Exception('Could not launch');
  }
}

Future<void> _launchUrlNothingNotes() async {
  if (!await launchUrl(_urlNothingNotes)) {
    throw Exception('Could not launch');
  }
}

Future<void> _launchUrlMessages() async {
  if (!await launchUrl(_urlMessages)) {
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
            padding: EdgeInsets.only(
              top: currentWidth > 800 ? 278 : currentWidth > 480 ? 150 : 100,
              left: currentWidth > 600 ? 0 : currentWidth > 400 ? 16 : 12,
              right: currentWidth > 600 ? 0 : currentWidth > 400 ? 16 : 12,
            ),
            child: Column(
              children: [

                Text(
                  "Luis Schröder",
                  style: TextStyle(
                    fontSize: currentWidth > 800 ? 50 : currentWidth > 480 ? 32 : 24,
                    color: Color.fromARGB(255, 206, 205, 195),
                    fontWeight: FontWeight.w600
                  ),
                  textAlign: TextAlign.center,
                  ),

                  SizedBox(height: currentWidth <= 400 ? 8 : 12),

                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: currentWidth > 600 ? 0 : currentWidth > 400 ? 20 : 16,
                    ),
                    child: Text(
                      currentWidth <= 400 
                        ? "Hi, I'm Luis, a Developer from Germany"
                        : "Hi, My name is Luis, I'm a Developer from Germany",
                      style: TextStyle(
                        fontSize: currentWidth > 800 ? 25 : currentWidth > 480 ? 18 : 14,
                        color: Color.fromARGB(255, 135, 133, 128),
                        fontWeight: FontWeight.w200
                      ),
                      textAlign: TextAlign.center,
                      ),
                  ),

                  SizedBox(height: currentWidth <= 400 ? 16 : 20),
      
                // Latest Work Container
                InkWell(
                  onTap: () {
                    _launchUrlMyle();
                  },

                  onHover: (value) {

                  },
                  child: Container(
                    width: currentWidth > 1000 ? 1000 : currentWidth > 400 ? currentWidth - 32 : currentWidth - 24,
                    height: currentWidth > 800 ? 315 : currentWidth > 480 ? 250 : currentWidth > 400 ? 200 : 180,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 16, 15, 15),
                      borderRadius: BorderRadius.circular(currentWidth <= 400 ? 8 : 12),
                      border: Border.all(color: Color.fromARGB(255, 40, 39, 38)),
                    ),
                    child: currentWidth > 800 
                      ? Row(
                          children: [
                                      
                            // Text Section
                            Padding(
                              padding: const EdgeInsets.only(top: 120, left: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                      
                                  // Heading Text
                                     Text("Myle",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromARGB(255, 206, 205, 195)
                                      )),
                                      
                                      Container(
                                          width: 400,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                      
                                              // Description Text
                                              Text(
                                                "Myle the Browser that Adapts to you",
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
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          "lib/assets/myle_logo.png", 
                                          fit: BoxFit.contain,
                                          ),
                                      ),
                                    ),
                                  ),
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Mobile layout - stacked vertically
                            ClipRRect(
                              borderRadius: BorderRadius.circular(currentWidth <= 400 ? 6 : 8),
                              child: Image.asset(
                                "lib/assets/myle_logo.png", 
                                width: currentWidth <= 400 ? 50 : currentWidth <= 480 ? 60 : 80,
                                height: currentWidth <= 400 ? 50 : currentWidth <= 480 ? 60 : 80,
                                fit: BoxFit.contain,
                                ),
                            ),
                            SizedBox(height: currentWidth <= 400 ? 8 : 15),
                            Text("Myle",
                              style: TextStyle(
                                fontSize: currentWidth <= 400 ? 14 : currentWidth <= 480 ? 16 : 18,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 206, 205, 195)
                              )),
                            SizedBox(height: currentWidth <= 400 ? 4 : 8),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: currentWidth <= 400 ? 12 : 20),
                              child: Text(
                                currentWidth <= 400 
                                  ? "Browser that Adapts to you"
                                  : "Myle the Browser that Adapts to you",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 147, 147, 147),
                                  fontSize: currentWidth <= 400 ? 11 : currentWidth <= 480 ? 12 : 14,
                                ),
                                textAlign: TextAlign.center,
                                ),
                            ),
                          ],
                        ),
                  ),
                ),
      
                SizedBox(height: currentWidth <= 400 ? 12 : 20),
      
                Container(
                  width: currentWidth > 1000 ? 1005 : currentWidth > 400 ? currentWidth - 32 : currentWidth - 24,
                  child: currentWidth > 800
                    ? Row(
                        children: [
                      
                          // Work Container 1
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () {
                                  _launchUrlBraveApi();
                                },
                                child: Container(
                                  height: 315,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 16, 15, 15),
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Color.fromARGB(255, 40, 39, 38)),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      "lib/assets/BraveAPI.jpg",
                                      fit: BoxFit.cover,
                                      ),
                                  ),
                                ),
                              ),
                            ),
                      
                          SizedBox(width: 20,),
                      
                          // Work Container 2
                            Expanded(
                              flex: 2,
                              child: InkWell(
                                onTap: () {
                                  _launchUrlNothingNotes();
                                },
                                child: Container(
                                  height: 315,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 16, 15, 15),
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Color.fromARGB(255, 40, 39, 38)),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      "lib/assets/NothingNotes.jpg", 
                                      fit: BoxFit.cover,
                                      ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      )
                    : Column(
                        children: [
                          // Mobile: Stack vertically
                          InkWell(
                            onTap: () {
                              _launchUrlBraveApi();
                            },
                            child: Container(
                              width: double.infinity,
                              height: currentWidth > 480 ? 200 : currentWidth > 400 ? 160 : 140,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 16, 15, 15),
                                borderRadius: BorderRadius.circular(currentWidth <= 400 ? 8 : 12),
                                border: Border.all(color: Color.fromARGB(255, 40, 39, 38)),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(currentWidth <= 400 ? 8 : 12),
                                child: Image.asset(
                                  "lib/assets/BraveAPI.jpg",
                                  fit: BoxFit.cover,
                                  ),
                              ),
                            ),
                          ),
                          SizedBox(height: currentWidth <= 400 ? 12 : 20),
                          InkWell(
                            onTap: () {
                              _launchUrlNothingNotes();
                            },
                            child: Container(
                              width: double.infinity,
                              height: currentWidth > 480 ? 200 : currentWidth > 400 ? 160 : 140,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 16, 15, 15),
                                borderRadius: BorderRadius.circular(currentWidth <= 400 ? 8 : 12),
                                border: Border.all(color: Color.fromARGB(255, 40, 39, 38)),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(currentWidth <= 400 ? 8 : 12),
                                child: Image.asset(
                                  "lib/assets/NothingNotes.jpg", 
                                  fit: BoxFit.cover,
                                  ),
                              ),
                            ),
                          ),
                        ],
                      ),
                ),
      
                SizedBox(height: currentWidth <= 400 ? 12 : 20),
      
                Container(
                  width: currentWidth > 1000 ? 1005 : currentWidth > 400 ? currentWidth - 32 : currentWidth - 24,
                  child: InkWell(
                    onTap: () {
                      _launchUrlMessages();
                    },
                    child: Container(
                      width: double.infinity,
                      height: currentWidth > 800 ? 600 : currentWidth > 600 ? 400 : currentWidth > 480 ? 300 : currentWidth > 400 ? 250 : 200,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 16, 15, 15),
                        borderRadius: BorderRadius.circular(currentWidth <= 400 ? 8 : 12),
                        border: Border.all(color: Color.fromARGB(255, 40, 39, 38)),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(currentWidth <= 400 ? 8 : 12),
                        child: Image.asset(
                          "lib/assets/Messages.jpg",
                          fit: BoxFit.cover,
                          ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: currentWidth > 800 ? 278 : currentWidth > 480 ? 150 : 100),
            ]),
          ),
    ),
),
        ],
      ),
    );
  }
}