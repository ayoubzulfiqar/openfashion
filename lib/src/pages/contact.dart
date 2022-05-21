import 'package:flutter/material.dart';
import 'package:open_fashion/constants.dart';
import 'package:open_fashion/src/pages/aboutUs.dart';
import 'package:open_fashion/src/pages/blogpage.dart';
import 'package:open_fashion/src/widget/appbar.dart';
import 'package:open_fashion/src/widget/button.dart';
import 'package:open_fashion/src/widget/drawer.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      appBar: appBar(scaffoldKey),
      drawer: drawer(),
      body: Column(
        children: [
          const Center(
            child: Text(
              "CONTACT US",
              style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(width: 124, child: AppData.line),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: 45,
                    height: 45,
                    child: AppData.chat,
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Need an ASAP answer? Contact us via chat, 24/7! For existing furniture orders, please call us.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Button(
                    text: 'CHAT WITH US',
                    width: 180.0,
                    isShowing: false,
                    height: 40.0,
                    textColor: Colors.white,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 20),
                  SizedBox(width: 45, height: 45, child: AppData.messenger),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "You can text us at 800-309-2622 – or click on the “text us” link below on your mobile device. Please allow the system to acknowledge a simple greeting (even “Hi” will do!) before providing your question/order details. Consent is not required for any purchase. Message and data rates may apply. Text messaging may not be available via all carriers.",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Button(
                      text: 'TEXT US',
                      width: 140,
                      height: 40,
                      isShowing: false,
                      textColor: Colors.white,
                      color: Colors.black),
                  const SizedBox(height: 20),
                  SizedBox(width: 45, height: 45, child: AppData.twitter),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "To send us a private or direct message, like @Open Fashion on Facebook or follow us on Twitter. We’ll get back to you ASAP. Please include your name, order number, and email address for a faster response!",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  const SizedBox(height: 50),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      SizedBox(width: 124, child: AppData.line),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 24, width: 24, child: AppData.instagram),
                          const SizedBox(width: 20),
                          SizedBox(
                              height: 24,
                              width: 24,
                              child: AppData.twitterSocial),
                          const SizedBox(width: 20),
                          SizedBox(
                              height: 24, width: 24, child: AppData.youTube),
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
                                      builder: (context) => const AboutUs()));
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
                                  builder: (context) => const Blog(),
                                ),
                              );
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
            ),
          )
        ],
      ),
    );
  }
}
