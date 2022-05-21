import 'package:flutter/material.dart';
import 'package:open_fashion/constants.dart';
import 'package:open_fashion/src/pages/new_arrival.dart';
import 'package:open_fashion/src/widget/appbar.dart';
import 'package:open_fashion/src/widget/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: appBar(scaffoldKey),
      drawer: drawer(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "img/header_onboarding/first_header.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 180),
            AppData.slogan,
            const SizedBox(height: 180),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NewArrival()));
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(253, 40),
                  primary: const Color.fromARGB(0, 0, 0, 3)),
              child: const Text(
                "Explore Collection",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
