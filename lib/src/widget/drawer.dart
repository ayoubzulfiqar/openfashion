import 'package:flutter/material.dart';

import 'package:open_fashion/constants.dart';

Drawer drawer() {
  return Drawer(
    child: Column(
      children: [
        const SizedBox(height: 80),
        AppData.logo,
        const SizedBox(height: 10),
        SizedBox(width: 150, child: AppData.line),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "New",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Apparel",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Bag",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Shoes",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Beauty",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: const [
                      Icon(Icons.phone),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "(786 ) 7 13-86 16",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: const [
                      Icon(Icons.location_city),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Store locator",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 150, child: AppData.line),
        const SizedBox(height: 5),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 24, width: 24, child: AppData.instagram),
            const SizedBox(width: 20),
            SizedBox(height: 24, width: 24, child: AppData.twitterSocial),
            const SizedBox(width: 20),
            SizedBox(height: 24, width: 24, child: AppData.youTube),
          ],
        ),
        const SizedBox(height: 30),
      ],
    ),
  );
}
