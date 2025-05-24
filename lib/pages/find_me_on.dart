import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/components/my_button.dart';
import 'package:portfolio/pages/about_page.dart';
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

class BentoGridItem {
  final String title;
  final String? subtitle;
  final IconData? icon;
  final String? imagePath;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onTap;
  final int gridWidth;
  final int gridHeight;

  BentoGridItem({
    required this.title,
    this.subtitle,
    this.icon,
    this.imagePath,
    required this.backgroundColor,
    required this.textColor,
    required this.onTap,
    this.gridWidth = 1,
    this.gridHeight = 1,
  });
}

class FindMeOn extends StatelessWidget {
  const FindMeOn({super.key});

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
    
    // Define bento grid items using your portfolio's color scheme
    final List<BentoGridItem> bentoItems = [
      BentoGridItem(
        title: "GitHub",
        subtitle: "@ThriveEngineer",
        icon: Icons.code,
        backgroundColor: const Color.fromARGB(255, 16, 15, 15),
        textColor: const Color.fromARGB(255, 206, 205, 195),
        onTap: _launchUrlGithub,
        gridWidth: 2,
        gridHeight: 1,
      ),
      BentoGridItem(
        title: "Upwork",
        subtitle: "Hire me",
        icon: Icons.work,
        backgroundColor: const Color.fromARGB(255, 16, 15, 15),
        textColor: const Color.fromARGB(255, 206, 205, 195),
        onTap: _launchUrlUpwork,
      ),
      BentoGridItem(
        title: "Fiverr",
        subtitle: "Freelance",
        icon: Icons.handyman,
        backgroundColor: const Color.fromARGB(255, 16, 15, 15),
        textColor: const Color.fromARGB(255, 206, 205, 195),
        onTap: _launchUrlFiverr,
      ),
      BentoGridItem(
        title: "Bluesky",
        subtitle: "@thriveengineer.bsky.social",
        icon: Icons.cloud,
        backgroundColor: const Color.fromARGB(255, 16, 15, 15),
        textColor: const Color.fromARGB(255, 206, 205, 195),
        onTap: _launchUrlBluesky,
      ),
      BentoGridItem(
        title: "Threads",
        subtitle: "@thrive.dev",
        icon: Icons.forum,
        backgroundColor: const Color.fromARGB(255, 16, 15, 15),
        textColor: const Color.fromARGB(255, 206, 205, 195),
        onTap: _launchUrlThreads,
      ),
      BentoGridItem(
        title: "Mastodon",
        subtitle: "@ThriveEngineer.mastodon.social",
        icon: Icons.alternate_email,
        backgroundColor: const Color.fromARGB(255, 16, 15, 15),
        textColor: const Color.fromARGB(255, 206, 205, 195),
        onTap: _launchUrlMastodon,
      ),
      BentoGridItem(
        title: "Read.cv",
        subtitle: "Portfolio",
        icon: Icons.person,
        backgroundColor: const Color.fromARGB(255, 16, 15, 15),
        textColor: const Color.fromARGB(255, 206, 205, 195),
        onTap: _launchUrlRead,
      ),
      BentoGridItem(
        title: "Ko-fi",
        subtitle: "Support me",
        icon: Icons.coffee,
        backgroundColor: const Color.fromARGB(255, 16, 15, 15),
        textColor: const Color.fromARGB(255, 206, 205, 195),
        onTap: _launchUrlKofi,
        gridWidth: 2,
        gridHeight: 1,
      ),
      BentoGridItem(
        title: "Myle Project",
        subtitle: "Featured work",
        icon: Icons.web,
        backgroundColor: const Color.fromARGB(255, 16, 15, 15),
        textColor: const Color.fromARGB(255, 206, 205, 195),
        onTap: _launchUrlMyle,
        gridWidth: 2,
        gridHeight: 2,
      ),
    ];
    
    return Scaffold(
      appBar: PreferredSize(
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

                       MyButton(text: currentWidth > 750 ? "Find me on" : "", icon: Icons.add_box_rounded, onTap: ()
                       {
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
              ),
// site
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Find me on",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 206, 205, 195),
                      fontFamily: "MonaSans",
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Connect with me across different platforms",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 135, 133, 128),
                      fontFamily: "MonaSans",
                    ),
                  ),
                ],
              ),
            ),
            
            // Bento Grid
            Expanded(
              child: BentoGrid(items: bentoItems),
            ),
          ],
        ),
      ),
    );
  }
}

class BentoGrid extends StatelessWidget {
  final List<BentoGridItem> items;

  const BentoGrid({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = screenWidth > 800 ? 4 : (screenWidth > 600 ? 3 : 2);
    
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1.2,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return BentoGridTile(item: items[index]);
      },
    );
  }
}

class BentoGridTile extends StatefulWidget {
  final BentoGridItem item;

  const BentoGridTile({super.key, required this.item});

  @override
  State<BentoGridTile> createState() => _BentoGridTileState();
}

class _BentoGridTileState extends State<BentoGridTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.05,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _scaleAnimation,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: MouseRegion(
            onEnter: (_) {
              setState(() => _isHovered = true);
              _controller.forward();
            },
            onExit: (_) {
              setState(() => _isHovered = false);
              _controller.reverse();
            },
            child: GestureDetector(
              onTap: widget.item.onTap,
              child: Container(
                decoration: BoxDecoration(
                  color: widget.item.backgroundColor,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color.fromARGB(255, 40, 39, 38)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 40, 39, 38).withOpacity(0.3),
                      blurRadius: _isHovered ? 20 : 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Stack(
                    children: [
                      // Background gradient
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              widget.item.backgroundColor,
                              widget.item.backgroundColor.withOpacity(0.8),
                            ],
                          ),
                        ),
                      ),
                      
                      // Content
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Icon
                            if (widget.item.icon != null)
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 40, 39, 38).withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(
                                  widget.item.icon,
                                  color: widget.item.textColor,
                                  size: 24,
                                ),
                              ),
                            
                            // Text content
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.item.title,
                                  style: TextStyle(
                                    color: widget.item.textColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "MonaSans",
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                if (widget.item.subtitle != null) ...[
                                  const SizedBox(height: 4),
                                  Text(
                                    widget.item.subtitle!,
                                    style: TextStyle(
                                      color: widget.item.textColor.withOpacity(0.8),
                                      fontSize: 12,
                                      fontFamily: "MonaSans",
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ],
                            ),
                          ],
                        ),
                      ),
                      
                      // Hover effect overlay
                      if (_isHovered)
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 40, 39, 38).withOpacity(0.1),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}