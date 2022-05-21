import 'package:open_fashion/src/pages/aboutUs.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/src/pages/contact.dart';

import 'package:open_fashion/src/widget/button.dart';
import 'package:open_fashion/src/widget/chips.dart';

import '../../constants.dart';

class Blog extends StatelessWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          const Center(
            child: Text(
              "BLOG",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: SizedBox(
              width: 124,
              child: AppData.line,
              height: 9,
            ),
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                6,
                (index) => chips(context),
              ),
            ),
          ),
          // GridView.builder(
          //     physics: const BouncingScrollPhysics(),
          //     shrinkWrap: true,
          //     itemCount: DatabaseImages.blogList.length,
          //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 1,
          //       childAspectRatio: 2 / 3,
          //     ),
          //     itemBuilder: (context, index) {
          //       return Container(
          //         margin: const EdgeInsets.all(10),
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(50),
          //         ),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             Flexible(
          //               child: Container(
          //                 width: 343,
          //                 height: 200,
          //                 decoration: BoxDecoration(
          //                   image: DecorationImage(
          //                     fit: BoxFit.fitWidth,
          //                     image: AssetImage(
          //                       DatabaseImages.blogList[index]["img"],
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
          //               child: Text(
          //                 DatabaseImages.blogList[index]["description"],
          //                 textAlign: TextAlign.center,
          //                 style: const TextStyle(
          //                     fontSize: 12, fontWeight: FontWeight.w400),
          //               ),
          //             ),
          //             // Text(
          //             //   "\$ " +
          //             //       DatabaseImages.allCollection[index]["price"]
          //             //           .toString(),
          //             //   textAlign: TextAlign.center,
          //             //   style: TextStyle(
          //             //       fontSize: 12,
          //             //       fontWeight: FontWeight.w400,
          //             //       color: AppColors.primary),
          //             // ),
          //           ],
          //         ),
          //       );
          //     }),
          ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: DatabaseImages.blogList.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 343,
                  height: 200,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Stack(
                          children: [
                            Container(
                              // width: 343,
                              // height: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    DatabaseImages.blogList[index]["img"],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                DatabaseImages.blogList[index]["title"],
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ), //Text
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                        child: Text(
                          DatabaseImages.blogList[index]["description"],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                );
              }),
          const SizedBox(height: 20),
          Column(
            children: [
              const Center(
                child: Button(
                  text: 'Load more',
                  icon: Icons.add,
                  isShowing: true,
                  width: 211,
                  height: 48,
                  textColor: Colors.black,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  SizedBox(width: 124, child: AppData.line),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 24, width: 24, child: AppData.instagram),
                      const SizedBox(width: 20),
                      SizedBox(
                          height: 24, width: 24, child: AppData.twitterSocial),
                      const SizedBox(width: 20),
                      SizedBox(height: 24, width: 24, child: AppData.youTube),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Text("support@openui.design"),
                  const Text("+60 825 876"),
                  const Text("08:00 - 22:00 - Everyday"),
                  const SizedBox(height: 30),
                  SizedBox(width: 124, child: AppData.line),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AboutUs(),
                            ),
                          );
                        },
                        child: const Text(
                          "About",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ContactUs(),
                            ),
                          );
                        },
                        child: const Text(
                          "Contact",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Blog()));
                        },
                        child: const Text(
                          "Blog",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                height: 50,
                color: Colors.grey.withOpacity(0.5),
                child: const Center(
                  child: Text(
                    "Copyright© OpenUI All Rights Reserved.",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
