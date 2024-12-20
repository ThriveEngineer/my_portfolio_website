import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          Text("Thrive Engineer"),
                        ],
                      ),
                      Text("Flutter Developer"),
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