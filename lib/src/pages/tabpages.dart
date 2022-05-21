import 'package:flutter/material.dart';
import 'package:open_fashion/constants.dart';
import 'package:open_fashion/src/pages/aboutUs.dart';
import 'package:open_fashion/src/pages/blogpage.dart';
import 'package:open_fashion/src/pages/contact.dart';

class AllCollection extends StatelessWidget {
  const AllCollection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GridView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: DatabaseImages.allCollection.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
            ),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage(
                                  DatabaseImages.allCollection[index]["img"])),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                      child: Text(
                        DatabaseImages.allCollection[index]["productName"],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Text(
                      "\$ " +
                          DatabaseImages.allCollection[index]["price"]
                              .toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primary),
                    ),
                  ],
                ),
              );
            }),
        Column(
          children: [
            Center(
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Explore More",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(width: 124, child: AppData.line),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Image.asset("img/brands/brands.png"),
            ),
            const SizedBox(height: 20),
            SizedBox(width: 124, child: AppData.line),
            const SizedBox(height: 20),
            const Text(
              "Just for You",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 20),
            SizedBox(width: 124, child: AppData.line),
          ],
        ),
        GridView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: DatabaseImages.allCollection.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 2 / 3,
            ),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage(
                                  DatabaseImages.allCollection[index]["img"])),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                      child: Text(
                        DatabaseImages.allCollection[index]["productName"],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Text(
                      "\$ " +
                          DatabaseImages.allCollection[index]["price"]
                              .toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primary),
                    ),
                  ],
                ),
              );
            }),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            SizedBox(width: 124, child: AppData.line),
            const SizedBox(height: 20),
            SizedBox(width: 90, height: 40, child: AppData.logo),
            const SizedBox(height: 20),
            const SizedBox(
              width: 265,
              height: 85,
              child: Text(
                "Making a luxurious lifestyle accessible for a generous group of women is our daily drive",
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(width: 124, child: AppData.line),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SizedBox(
                  width: 165,
                  height: 40,
                  child: Text("Fast shipping. Free on orders over \$25.",
                      textAlign: TextAlign.center),
                ),
                SizedBox(
                  width: 165,
                  height: 40,
                  child: Text("Sustainable process from start to finish.",
                      textAlign: TextAlign.center),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SizedBox(
                  width: 165,
                  height: 40,
                  child: Text("Unique designs and high-quality materials.",
                      textAlign: TextAlign.center),
                ),
                SizedBox(
                  width: 165,
                  height: 40,
                  child: Text("Fast shipping. Free on orders over \$25.",
                      textAlign: TextAlign.center),
                ),
              ],
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 66,
              height: 40,
              child: Image.asset("img/lining.png"),
            ),
            const SizedBox(height: 30),
            const Text(
              "FOLLOW US",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ],
        ),
        GridView.builder(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: DatabaseImages.userProfile.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 2,
          ),
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(20),
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
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                DatabaseImages.userProfile[index]["img"],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            DatabaseImages.userProfile[index]["name"],
                            style: const TextStyle(
                                color: Colors.white, fontSize: 14),
                          ), //Text
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        const SizedBox(height: 10),
        Column(
          children: [
            SizedBox(width: 124, child: AppData.line),
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
                  onPressed: () {},
                  child: const Text(
                    "About",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Contact",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Blog()));
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
        )
      ],
    );
  }
}

class Apparel extends StatelessWidget {
  const Apparel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: false,
      children: [
        GridView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: DatabaseImages.sweatersCategory.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
            ),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage(
                              DatabaseImages.sweatersCategory[index]["img"],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                      child: Text(
                        DatabaseImages.sweatersCategory[index]["title"],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Text(
                      DatabaseImages.sweatersCategory[index]["description"],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "\$ " +
                          DatabaseImages.sweatersCategory[index]["price"]
                              .toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primary),
                    ),
                  ],
                ),
              );
            }),
        const SizedBox(height: 10),
        Column(
          children: [
            SizedBox(width: 124, child: AppData.line),
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
                            builder: (context) => const ContactUs()));
                  },
                  child: const Text(
                    "Contact",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Blog()));
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
    );
  }
}

class Dress extends StatelessWidget {
  const Dress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // shrinkWrap: false,
      children: [
        GridView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: DatabaseImages.dressCategory.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
            ),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage(
                              DatabaseImages.dressCategory[index]["img"],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                      child: Text(
                        DatabaseImages.dressCategory[index]["title"],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Text(
                      DatabaseImages.dressCategory[index]["description"],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "\$ " +
                          DatabaseImages.dressCategory[index]["price"]
                              .toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primary),
                    ),
                  ],
                ),
              );
            }),
        const SizedBox(height: 10),
        Column(
          children: [
            SizedBox(width: 124, child: AppData.line),
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
                            builder: (context) => const ContactUs()));
                  },
                  child: const Text(
                    "Contact",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Blog()));
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
    );
  }
}

class TShirt extends StatelessWidget {
  const TShirt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // shrinkWrap: false,
      children: [
        GridView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: DatabaseImages.tShirtCategory.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
            ),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage(
                              DatabaseImages.tShirtCategory[index]["img"],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                      child: Text(
                        DatabaseImages.tShirtCategory[index]["title"],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Text(
                      DatabaseImages.tShirtCategory[index]["description"],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "\$ " +
                          DatabaseImages.tShirtCategory[index]["price"]
                              .toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primary),
                    ),
                  ],
                ),
              );
            }),
        const SizedBox(height: 10),
        Column(
          children: [
            SizedBox(width: 124, child: AppData.line),
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
                            builder: (context) => const ContactUs()));
                  },
                  child: const Text(
                    "Contact",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Blog()));
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
    );
  }
}

class Bags extends StatelessWidget {
  const Bags({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // shrinkWrap: false,
      children: [
        GridView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: DatabaseImages.bagCategory.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
            ),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage(
                              DatabaseImages.bagCategory[index]["img"],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                      child: Text(
                        DatabaseImages.bagCategory[index]["title"],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Text(
                      DatabaseImages.bagCategory[index]["description"],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "\$ " +
                          DatabaseImages.bagCategory[index]["price"].toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primary),
                    ),
                  ],
                ),
              );
            }),
        const SizedBox(height: 10),
        Column(
          children: [
            SizedBox(width: 124, child: AppData.line),
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
                            builder: (context) => const ContactUs()));
                  },
                  child: const Text(
                    "Contact",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Blog()));
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
    );
  }
}
