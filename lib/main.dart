import 'package:flutter/material.dart';
import 'dart:async';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'All In One Sites',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        //brightness: Brightness.dark,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  List<String> socialImages = [
    "assets/facebook.png",
    "assets/instagram.png",
    "assets/twitter.png",
    "assets/youtube.png",
    "assets/gplus.png",
    "assets/tiktok.jpg",
    "assets/sonylive.jpg",
    "assets/sc.jpg",
    "assets/hotstar.png",
    "assets/netflix.png",
    "assets/azp.jpg",
    "assets/likee.png",
  ];

  List<String> shoppingImages = [
    "assets/flipkart.png",
    "assets/az.png",
    "assets/limeroad.png",
    "assets/snapdeal.png",
    "assets/zomato.jpg",
  ];

  TabController tabController;

  

  
  @override
  Widget build(BuildContext context) {
    tabController = new TabController(length: 2, vsync: this);

    var tabBarItem = new TabBar(
      tabs: [
        Tab(
          icon: Icon(Icons.phone_android),
          text: "       Social &\n Entertainment",
        ),
        Tab(icon: Icon(Icons.shopping_cart), text: "    Food &\n Shopping"),
      ],
      controller: tabController,
      indicatorColor: Colors.white,
    );

    var social = GridView.builder(
      padding: EdgeInsets.all(15.0),
      itemCount: socialImages.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, crossAxisSpacing: 15.0, mainAxisSpacing: 20.0),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: new InkResponse(
            child: Image.asset(socialImages[index]),
            onTap: () {
              if (index == 0) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView(
                      title: "Facebook",
                      selectedUrl: "https://www.facebook.com",
                    ),
                  ),
                );
              } else if (index == 1) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView(
                      title: "Instagram",
                      selectedUrl: "https://www.instagram.com",
                    ),
                  ),
                );
              } else if (index == 2) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView(
                      title: "Twitter",
                      selectedUrl: "https://www.twitter.com",
                    ),
                  ),
                );
              } else if (index == 3) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView(
                      title: "Youtube",
                      selectedUrl: "https://www.youtube.com",
                    ),
                  ),
                );
              } else if (index == 4) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView(
                      title: "Google+",
                      selectedUrl: "https://myaccount.google.com/profile",
                    ),
                  ),
                );
              } else if (index == 5) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView(
                      title: "Tiktok",
                      selectedUrl: "https://www.tiktok.com",
                    ),
                  ),
                );
              } else if (index == 6) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView(
                      title: "SonyLiv",
                      selectedUrl: "https://www.sonyliv.com",
                    ),
                  ),
                );
              } else if (index == 7) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView(
                      title: "ShareChat",
                      selectedUrl: "https://www.sharechat.com",
                    ),
                  ),
                );
              } else if (index == 8) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView(
                      title: "Hotstar",
                      selectedUrl: "https://www.hotstar.com",
                    ),
                  ),
                );
              } else if (index == 9) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView(
                      title: "Netflix",
                      selectedUrl: "https://www.netflix.com",
                    ),
                  ),
                );
              } else if (index == 10) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView(
                      title: "Amazon Prime",
                      selectedUrl: "https://www.primevideo.com",
                    ),
                  ),
                );
              } else if (index == 11) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView(
                      title: "Likee",
                      selectedUrl: "https://www.likee.com",
                    ),
                  ),
                );
              }
            },
          ),
        );
      },
    );

  

    var shopping = GridView.builder(
      padding: EdgeInsets.all(15.0),
      //shrinkWrap: true,
      itemCount: shoppingImages.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, crossAxisSpacing: 15.0, mainAxisSpacing: 20.0),
      itemBuilder: (BuildContext context, int index) {
        //return Image.asset(images[index]);
        return Card(
          child: new InkResponse(
            child: Image.asset(shoppingImages[index]),
            onTap: () {
              if (index == 0) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView(
                      title: "Flipkart",
                      selectedUrl: "https://www.flipkart.com",
                    ),
                  ),
                );
              } else if (index == 1) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView(
                      title: "Amazon",
                      selectedUrl: "https://www.amazon.com",
                    ),
                  ),
                );
              } else if (index == 2) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView(
                      title: "LimeRoad",
                      selectedUrl: "https://www.limeroad.com",
                    ),
                  ),
                );
              } else if (index == 3) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView(
                      title: "Snapdeal",
                      selectedUrl: "https://www.snapdeal.com",
                    ),
                  ),
                );
              } else if (index == 4) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      var myWebView = MyWebView(
                        title: "Zomato",
                        selectedUrl: "https://www.zomato.com",
                      );
                      return myWebView;
                    },
                  ),
                );
              }
            },
          ),
        );
      },
    );

    return new DefaultTabController(
      length: 2,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("All In One Sites"),
          bottom: tabBarItem,
        ),
        body: new TabBarView(
          controller: tabController,
          children: [
            social,
            shopping,
          ],
        ),
      ),
    );
  }
}



class MyWebView extends StatelessWidget {
  final String title;
  final String selectedUrl;

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  MyWebView({@required this.title, @required this.selectedUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: WebView(
        initialUrl: selectedUrl,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
    );
  }
}
