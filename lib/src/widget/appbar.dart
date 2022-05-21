import 'package:flutter/material.dart';
import 'package:open_fashion/constants.dart';

AppBar appBar(GlobalKey<ScaffoldState> scaffoldKey) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: SizedBox(
      width: 78,
      height: 32,
      child: InkWell(
          onTap: () {
            scaffoldKey.currentState?.openDrawer();
          },
          child: AppData.menu),
    ),
    title: AppData.logo,
    centerTitle: true,
    actions: [
      AppData.search,
      const SizedBox(width: 10),
      AppData.shoppingBag,
      const SizedBox(width: 20)
    ],
  );
}
