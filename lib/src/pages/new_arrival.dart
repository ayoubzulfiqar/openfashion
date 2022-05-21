import 'package:flutter/material.dart';
import 'package:open_fashion/constants.dart';
import 'package:open_fashion/src/pages/tabpages.dart';
import 'package:open_fashion/src/widget/tabindicator.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Column(
            children: [
              const Text(
                "NEW ARRIVAL",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(width: 124, child: AppData.line),
            ],
          ),
          centerTitle: true,
          bottom: TabBar(
            isScrollable: true,
            indicator: CircleTabIndicator(color: Colors.black, radius: 3),
            tabs: const <Widget>[
              Tab(
                child: Text(
                  "All",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Apparel",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Dress",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "TShirt",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Bag",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
        body: const TabBarView(
            children: [AllCollection(), Apparel(), Dress(), TShirt(), Bags()]),
      ),
    );
  }
}
