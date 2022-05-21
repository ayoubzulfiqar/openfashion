import 'package:flutter/widgets.dart';

extension Responsive on BuildContext {
  // width = 392.72, height = 802.9
  Size get size => MediaQuery.of(this).size;
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  EdgeInsets get padding => MediaQuery.of(this).padding;
  double get leftPadding => MediaQuery.of(this).padding.left;
  double get rightPadding => MediaQuery.of(this).padding.right;
  double get topPadding => MediaQuery.of(this).padding.top;
  double get bottomPadding => MediaQuery.of(this).padding.bottom;
}

class Brands {
  static final Image boss =
      Image.asset("img/brands/Boss.png", width: 69, height: 10);
  static final Image burBerry =
      Image.asset("img/brands/Burberry.png", width: 69, height: 10);
  static final Image cartier =
      Image.asset("img/brands/Cartier.png", width: 69, height: 10);
  static final Image gucci =
      Image.asset("img/brands/Gucci.png", width: 69, height: 10);
  static final Image prada =
      Image.asset("img/brands/Prada.png", width: 69, height: 10);
  static final Image tiffanyCo =
      Image.asset("img/brands/Tiffany & Co.png", width: 69, height: 10);
}

class AppData {
  // checkOut Icons
  static final Image doorToDoo =
      Image.asset("img/icons/checkOutIcons/DoortoDoor Delivery.png");
  static final Image voucher =
      Image.asset("img/icons/checkOutIcons/Voucher.png");
  // contact us Icons
  static final Image messenger =
      Image.asset("img/icons/contactUsIcons/Add Message.png");
  static final Image chat =
      Image.asset("img/icons/contactUsIcons/Chat Message.png");
  static final Image twitter =
      Image.asset("img/icons/contactUsIcons/Twitter.png");

  // headerIcons
  static final Image logo = Image.asset(
    "img/icons/headerIcon/Logo.png",
    width: 78,
    height: 32,
  );
  static final Image menu = Image.asset(
    "img/icons/headerIcon/Menu.png",
    width: 24,
    height: 24,
  );
  static final Image search = Image.asset(
    "img/icons/headerIcon/Search.png",
    width: 24,
    height: 24,
  );
  static final Image shoppingBag = Image.asset(
    "img/icons/headerIcon/shopping bag.png",
    width: 24,
    height: 24,
  );

  // paymentSuccessIcons
  static final Image vectorSuccess =
      Image.asset("img/icons/paymentSuccessIcons/Vector.png");
  static final Image emoteFirst =
      Image.asset("img/icons/paymentSuccessIcons/Disappointed.png");
  static final Image emoteSecond =
      Image.asset("img/icons/paymentSuccessIcons/Happy.png");
  static final Image emoteThird =
      Image.asset("img/icons/paymentSuccessIcons/InLove.png");

  // productIcons
  static final Image doNotBleach =
      Image.asset("img/icons/productIcons/Do Not Bleach.png");
  static final Image doNotTumble =
      Image.asset("img/icons/productIcons/Do Not Tumble Dry.png");
  static final Image doNotWash =
      Image.asset("img/icons/productIcons/Do Not Wash.png");
  static final Image ironWithLowTemper =
      Image.asset("img/icons/productIcons/Iron Low Temperature.png");
  static final Image refresh =
      Image.asset("img/icons/productIcons/Refresh.png");
  static final Image shipping =
      Image.asset("img/icons/productIcons/Shipping.png");
  static final Image tag = Image.asset("img/icons/productIcons/Tag.png");

  // bottomMenuIcon
  static final Image call = Image.asset("img/icons/smallIcons/Call.png");
  static final Image location =
      Image.asset("img/icons/smallIcons/Location.png");

  // socialMediaIcons

  static final Image instagram =
      Image.asset("img/icons/socialMediaIcon/Instagram.png");
  static final Image twitterSocial =
      Image.asset("img/icons/socialMediaIcon/Twitter.png");
  static final Image youTube =
      Image.asset("img/icons/socialMediaIcon/YouTube.png");

  // general
  static final Image line = Image.asset("img/icons/line.png");
  static final Image notFound = Image.asset("img/icons/notFoundIcon.png");
  static final Image ourStory = Image.asset("img/ourStoryPhotoImage.png");
  static final Image slogan = Image.asset("img/slogan.png");
}

class AppColors {
  static Color blackColor = const Color(0xFF000000);
  static Color greyColor = const Color(0xFF333333);
  static Color lessGrey = const Color(0xFF555555);
  static Color lightGrey = const Color(0xFF888888);
  static Color inputBackground = const Color(0xFFD9DBE9);
  static Color background = const Color(0xFFD9DBE9);
  static Color offWhite = const Color(0xFFD9DBE9);
  static Color primary = const Color(0xFFA8715A);
  static Color secondary = const Color(0xFFDD8560);
}

class DatabaseImages {
  static final List headerImage = [
    "img/header_onboarding/first_header.png",
    // "img/header_onboarding/headerTwo.jpg",
    // "img/header_onboarding/headerThree.jpg",
    // "img/header_onboarding/headerFour.jpg"
  ];
  static final List allCollection = [
    {
      "id": 1,
      "productName": "21WN reversible angora cardigan",
      "price": 120,
      "img": "img/new_arrival/newOne.png"
    },
    {
      "id": 2,
      "productName": "21WN reversible angora cardigan",
      "price": 120,
      "img": "img/new_arrival/newTwo.png"
    },
    {
      "id": 3,
      "productName": "21WN reversible angora cardigan",
      "price": 120,
      "img": "img/new_arrival/newThree.png"
    },
    {
      "id": 4,
      "productName": "21WN reversible angora cardigan",
      "price": 120,
      "img": "img/new_arrival/newFour.png"
    }
  ].toList();

  static final List userProfile = [
    {"id": 1, "name": "@_mia", "img": "img/profile/profileOne.png"},
    {"id": 2, "name": "@_alex", "img": "img/profile/profileTwo.png"},
    {"id": 3, "name": "@_minos", "img": "img/profile/profileThree.png"},
    {"id": 4, "name": "@_farad", "img": "img/profile/profileFour.png"}
  ];
  static final List blogList = [
    {
      "id": 1,
      "title": "2021 Style Guide: The Biggest Fall Trends",
      "description":
          "The excitement of fall fashion is here and I am already loving some of the trend forecasts",
      "img": "img/blog/blogOne.png"
    },
    {
      "id": 2,
      "title": "3 Pairs of Denim You Would not Believe",
      "description":
          "The excitement of fall fashion is here and I’m already loving some of the trend forecasts",
      "img": "img/blog/blogTwo.png"
    },
    {
      "id": 3,
      "title": "3 Pairs of Denim You Won’t Believe",
      "description":
          "The excitement of fall fashion is here and I’m already loving some of the trend forecasts",
      "img": "img/blog/blogThree.png"
    },
    {
      "id": 4,
      "title": "5 Fall Looks I am Loving",
      "description":
          "The excitement of fall fashion is here and I am already loving some of the trend forecasts",
      "img": "img/blog/blogFour.png"
    },
    {
      "id": 5,
      "title": "5 Fall Boot Trends You Need to Try",
      "description":
          "The excitement of fall fashion is here and I’m already loving some of the trend forecasts ",
      "img": "img/blog/blogFIve.png"
    },
    {
      "id": 6,
      "title": "2021 Style Guide: The Biggest Fall Trends",
      "description":
          "The excitement of fall fashion is here and I’m already loving some of the trend forecasts ",
      "img": "img/blog/blogSix.png"
    },
  ];

  static final List sweatersCategory = [
    {
      "id": 1,
      "title": "LAMEREI",
      "description": "Recycle Boucle Knit Cardigan Pink",
      "price": 120,
      "ratings": "4.8 Ratings",
      "size": ["S", "M", "L"],
      "img": "img/sweater/sweaterOne.png"
    },
    {
      "id": 2,
      "title": "LAMEREI",
      "description": "Recycle Boucle Knit Cardigan Pink",
      "price": 120,
      "ratings": "4.8 Ratings",
      "size": ["S", "M", "L"],
      "img": "img/sweater/sweaterTwo.png"
    },
    {
      "id": 3,
      "title": "LAMEREI",
      "description": "Recycle Boucle Knit Cardigan Pink",
      "price": 120,
      "ratings": "4.8 Ratings",
      "size": ["S", "M", "L"],
      "img": "img/sweater/sweaterThree.png"
    },
    {
      "id": 4,
      "title": "LAMEREI",
      "description": "Recycle Boucle Knit Cardigan Pink",
      "price": 120,
      "ratings": "4.8 Ratings",
      "size": ["S", "M", "L"],
      "img": "img/sweater/sweaterFour.png"
    },
    {
      "id": 5,
      "title": "LAMEREI",
      "description": "Recycle Boucle Knit Cardigan Pink",
      "price": 120,
      "ratings": "4.8 Ratings",
      "size": ["S", "M", "L"],
      "img": "img/sweater/sweaterFive.png"
    },
    {
      "id": 6,
      "title": "LAMEREI",
      "description": "Recycle Boucle Knit Cardigan Pink",
      "price": 120,
      "ratings": "4.8 Ratings",
      "size": ["S", "M", "L"],
      "img": "img/sweater/sweaterSix.png"
    },
    {
      "id": 7,
      "title": "LAMEREI",
      "description": "Recycle Boucle Knit Cardigan Pink",
      "price": 120,
      "ratings": "4.8 Ratings",
      "size": ["S", "M", "L"],
      "img": "img/sweater/sweaterSeven.png"
    },
    {
      "id": 8,
      "title": "LAMEREI",
      "description": "Recycle Boucle Knit Cardigan Pink",
      "price": 120,
      "ratings": "4.8 Ratings",
      "size": ["S", "M", "L"],
      "img": "img/sweater/sweaterEight.png"
    },
    {
      "id": 9,
      "title": "LAMEREI",
      "description": "Recycle Boucle Knit Cardigan Pink",
      "price": 120,
      "ratings": "4.8 Ratings",
      "size": ["S", "M", "L"],
      "img": "img/sweater/sweaterNine.png"
    },
    {
      "id": 10,
      "title": "LAMEREI",
      "description": "Recycle Boucle Knit Cardigan Pink",
      "price": 120,
      "ratings": "4.8 Ratings",
      "size": ["S", "M", "L"],
      "img": "img/sweater/sweaterTen.png"
    }
  ];
  static final List sweaterWearing = [
    {
      "id": 1,
      "title": "MOHAN",
      "description": "Recycle Boucle Knit Cardigan Pink",
      "price": 120,
      "img": "img/sweaterWearing/sOne.png"
    },
    {
      "id": 2,
      "title": "MOHAN",
      "description": "Recycle Boucle Knit Cardigan Pink",
      "price": 120,
      "img": "img/sweaterWearing/sTwo.png"
    },
    {
      "id": 3,
      "title": "MOHAN",
      "description": "Recycle Boucle Knit Cardigan Pink",
      "price": 120,
      "img": "img/sweaterWearing/sThree.png"
    },
    {
      "id": 4,
      "title": "MOHAN",
      "description": "Recycle Boucle Knit Cardigan Pink",
      "price": 120,
      "img": "img/sweaterWearing/sFour.png"
    },
    {
      "id": 5,
      "title": "MOHAN",
      "description": "Recycle Boucle Knit Cardigan Pink",
      "price": 120,
      "img": "img/sweaterWearing/sFive.png"
    }
  ];
  static final List ringsCategory = [
    {
      "id": 1,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/rings/ringTwo.png"
    },
    {
      "id": 2,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/rings/ringThree.png"
    },
    {
      "id": 3,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/rings/ringFour.png"
    },
    {
      "id": 4,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/rings/ringFive.png"
    }
  ];
  static final List dressCategory = [
    {
      "id": 1,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/dress/dressOne.png"
    },
    {
      "id": 2,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/dress/dressTwo.png"
    },
    {
      "id": 3,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/dress/dressThree.png"
    },
    {
      "id": 4,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/dress/dressFour.png"
    },
    {
      "id": 5,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/dress/dressFive.png"
    },
    {
      "id": 6,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/dress/dressSix.png"
    },
    {
      "id": 7,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/dress/dressSeven.png"
    },
    {
      "id": 8,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/dress/dressOne.png"
    }
  ];
  static final List tShirtCategory = [
    {
      "id": 1,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/tShirt/tShirtOne.jpg"
    },
    {
      "id": 2,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/tShirt/tShirtTwo.jpg"
    },
    {
      "id": 3,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/tShirt/tShirtThree.jpg"
    },
    {
      "id": 4,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/tShirt/tShirtFour.jpg"
    },
    {
      "id": 5,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/tShirt/tShirtFive.jpg"
    },
    {
      "id": 6,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/tShirt/tShirtSix.jpg"
    }
  ];
  static final List bagCategory = [
    {
      "id": 1,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/bag/bagOne.jpg"
    },
    {
      "id": 2,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/bag/bagTwo.jpg"
    },
    {
      "id": 3,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/bag/bagThree.jpg"
    },
    {
      "id": 4,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/bag/bagFour.jpg"
    },
    {
      "id": 5,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/bag/bagFive.jpg"
    },
    {
      "id": 6,
      "title": "21WN",
      "description": "reversible angora cardigan",
      "price": 120,
      "img": "img/bag/bagSix.jpg"
    }
  ];
}
