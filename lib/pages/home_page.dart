import 'package:flutter/material.dart';
import 'package:portfolio/components/my_button.dart';
import 'package:portfolio/components/my_text_assets.dart';
import 'package:portfolio/components/my_text_icon.dart';
import 'package:portfolio/pages/about_page.dart';
import 'package:portfolio/pages/portfolio_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  color: Color.fromARGB(255, 16, 15, 15),
                  border: Border.all(color: Color.fromARGB(255, 40, 39, 38)),
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

                            SizedBox(width: 13,),

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

                      SizedBox(height: 15,),

                      Divider(
                        color: Color.fromARGB(255, 41, 40, 38),
                        indent: 0,
                        endIndent: 0,
                        ),

                        SizedBox(height: 15,),

                        Text("P A G E S",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 88, 89, 90)
                        ),
                        ),

                        SizedBox(height: 10,),

                        MyButton(text: "Home", icon: Icons.home_rounded, onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                       ),

                       SizedBox(height: 10,),

                       MyButton(text: "About", icon: Icons.info_rounded, onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()),);
                       }),

                       SizedBox(height: 10,),

                       MyButton(text: "Portfolio", icon: Icons.folder_rounded, onTap: ()
                       {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PortfolioPage()));
                       },
                       ),

                       SizedBox(height: 15,),

                       Divider(
                        color: Color.fromARGB(255, 41, 40, 38),
                        indent: 0,
                        endIndent: 0,
                        ),

                        SizedBox(height: 15,),

                        Text("F I N D   M E   O N",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 88, 89, 90)
                        ),
                        ),

                        SizedBox(height: 10,),

                        MyTextIcon(icon: Icons.reddit_rounded, text: "Reddit", onTap: () {

                        },
                       ),

                       SizedBox(height: 15,),

                       MyTextAssets(name: "lib/assets/bluesky.jpg", text: "Bluesky", onTap: () {}
                       ),

                       SizedBox(height: 15,),

                       MyTextAssets(name: "lib/assets/threads.jpg", text: "Threads", onTap: () {}
                       ),

                       SizedBox(height: 15,),

                       MyTextAssets(name: "lib/assets/mastodon.jpg", text: "Mastodon", onTap: () {}
                       ),

                       SizedBox(height: 15,),

                       MyTextAssets(name: "lib/assets/read.jpg", text: "read.cv", onTap: () {}
                       ),

                       SizedBox(height: 15,),

                       MyTextAssets(name: "lib/assets/github.jpg", text: "GitHub", onTap: () {}
                       ),

                       SizedBox(height: 15,),

                       MyTextAssets(name: "lib/assets/kofi.jpg", text: "Kofi", onTap: () {}
                       ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Site
          Expanded(
            child: Container(
              child: Column(
                children: [
                
              ]),
            ),
          ),
        ],
      ),
    );
  }
}