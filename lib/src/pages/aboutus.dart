import 'package:flutter/material.dart';
import 'package:open_fashion/constants.dart';
import 'package:open_fashion/src/widget/appbar.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      appBar: appBar(scaffoldKey),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Center(
            child: Text(
              "OUR STORY",
              style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(width: 124, child: AppData.line),
          const SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Open Fashion - Free E-Commerce UI Kit is a free download UI kit. You can open Open Fashion - Free E-Commerce UI Kit file by Figma.\nCreate stunning shop with bulletproof guidelines and thoughtful components. Its library contains more than 50+ components supporting Light & Dark Mode and 60+ ready to use mobile screens",
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Image.asset("img/ourStoryPhotoImage.png"),
                  const SizedBox(height: 40),
                  const Text(
                    "SIGN UP",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(width: 124, child: AppData.line),
                  const SizedBox(height: 10),
                  const Text(
                    "Receive early access to new arrivals, sales, exclusive content, events and much more!",
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(labelText: "Email address"),
                    ),
                  ),
                  const SizedBox(height: 30),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.black),
                      width: double.maxFinite,
                      height: 40,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "SUBMIT",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
