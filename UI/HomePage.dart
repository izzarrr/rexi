import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/rendering.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:potrtfolio/Model/Method.dart';
import 'package:potrtfolio/UI/About.dart';
// import 'package:potrtfolio/UI/FeatureProject.dart';
import 'package:potrtfolio/UI/Work.dart';
import 'package:potrtfolio/UI/featured_heading.dart';
import 'package:potrtfolio/Widget/AppBarTitle.dart';
// import 'package:potrtfolio/Widget/CustomText.dart';
// import 'package:potrtfolio/Widget/MainTiitle.dart';
// import 'package:potrtfolio/Widget/OSImages.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:potrtfolio/UI/Carousel.dart';
import 'LandingPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

// }

class _HomePageState extends State<HomePage> {
  Method method = Method();
  AutoScrollController _autoScrollController;
  final scrollDirection = Axis.vertical;

  bool isExpaned = true;

  bool get _isAppBarExpanded {
    return _autoScrollController.hasClients &&
        _autoScrollController.offset > (160 - kToolbarHeight);
  }

  @override
  void initState() {
    _autoScrollController = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection,
    )..addListener(
        () => _isAppBarExpanded
            ? isExpaned != false
                ? setState(
                    () {
                      isExpaned = false;
                      print('setState is called');
                    },
                  )
                : {}
            : isExpaned != true
                ? setState(() {
                    print('setState is called');
                    isExpaned = true;
                  })
                : {},
      );
    super.initState();
  }

  Future _scrollToIndex(int index) async {
    await _autoScrollController.scrollToIndex(index,
        preferPosition: AutoScrollPosition.begin);
    _autoScrollController.highlight(index);
  }

  Widget _wrapScrollTag({int index, Widget child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _autoScrollController,
      index: index,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        primary: true,
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //Mavigation Bar
            Container(
              height: size.height * 0.14,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Image.asset(
                      "images/logo1.png",
                      height: size.height / 20,
                    ),
                    Spacer(),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: DefaultTabController(
                          length: 4,
                          child: TabBar(
                            indicatorColor: Colors.transparent,
                            onTap: (index) async {
                              _scrollToIndex(index);
                            },
                            tabs: [
                              Tab(
                                child: AppBarTitle(
                                  text: 'Tentang Kami',
                                ),
                              ),
                              Tab(
                                child: AppBarTitle(
                                  text: 'Cara Kerja',
                                ),
                              ),
                              Tab(
                                child: AppBarTitle(
                                  text: 'Manajer Investasi',
                                ),
                              ),
                              Tab(
                                child: AppBarTitle(
                                  text: 'Kontak Kami',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.85, horizontal: 2),
                      child: Row(
                        children: [
                          Image.asset(
                            "images/image5.png",
                            height: size.height / 20,
                          ),
                          SizedBox(
                            width: size.width / 500,
                          ),
                          Image.asset(
                            "images/image6.png",
                            height: size.height / 20,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Card(
                        elevation: 4.0,
                        color: Color.fromRGBO(26, 102, 128, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(0.85),
                          height: size.height * 0.07,
                          width: size.height * 0.20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: FlatButton(
                            // hoverColor: Color.fromRGBO(26, 102, 128, 1),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Text(
                                "Daftar / Masuk",
                                style: TextStyle(
                                  color: Color.fromRGBO(26, 102, 128, 1),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Row(children: [
              //Social Icon
              // Container(
              //   width: size.width * 0.09,
              //   height: size.height - 82,
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       IconButton(
              //           icon: FaIcon(FontAwesomeIcons.github),
              //           color: Color(0xffffA8B2D1),
              //           iconSize: 16.0,
              //           onPressed: () {
              //             method.launchURL("https://github.com/champ96k");
              //           }),
              //       IconButton(
              //           icon: FaIcon(FontAwesomeIcons.twitter),
              //           color: Color(0xffffA8B2D1),
              //           iconSize: 16.0,
              //           onPressed: () {
              //             method.launchURL("https://twitter.com/champ_96k");
              //           }),
              //       IconButton(
              //         icon: FaIcon(FontAwesomeIcons.linkedin),
              //         color: Color(0xffffA8B2D1),
              //         onPressed: () {
              //           method.launchURL(
              //               "https://www.linkedin.com/in/tushar-nikam-a29a97131/");
              //         },
              //         iconSize: 16.0,
              //       ),
              //       IconButton(
              //           icon: Icon(Icons.call),
              //           color: Color(0xffffA8B2D1),
              //           iconSize: 16.0,
              //           onPressed: () {
              //             method.launchCaller();
              //           }),
              //       IconButton(
              //           icon: Icon(Icons.mail),
              //           color: Color(0xffffA8B2D1),
              //           iconSize: 16.0,
              //           onPressed: () {
              //             method.launchEmail();
              //           }),
              //       Padding(
              //         padding: const EdgeInsets.only(top: 16.0),
              //         child: Container(
              //           height: size.height * 0.20,
              //           width: 2,
              //           color: Colors.grey.withOpacity(0.4),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Expanded(
                  child: Container(
                height: size.height - 82,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: CustomScrollView(
                    controller: _autoScrollController,
                    slivers: <Widget>[
                      SliverList(
                        delegate: SliverChildListDelegate([
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: size.height * 0.8,
                                width: size.width,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color.fromRGBO(42, 176, 177, 1),
                                        Color.fromRGBO(26, 102, 128, 1)
                                      ]),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 60.0, horizontal: 40.0),
                                child: LandingPage(),
                              ),
                              //   SizedBox(
                              //     height: size.height * .06,
                              //   ),
                              //   CustomText(
                              //     text: "Hi, my name is",
                              //     textsize: 16.0,
                              //     color: Color(0xff41FBDA),
                              //     letterSpacing: 3.0,
                              //   ),
                              //   SizedBox(
                              //     height: 6.0,
                              //   ),
                              //   CustomText(
                              //     text: "Tushar Nikam.",
                              //     textsize: 68.0,
                              //     color: Color(0xffCCD6F6),
                              //     fontWeight: FontWeight.w900,
                              //   ),
                              //   SizedBox(
                              //     height: 4.0,
                              //   ),
                              //   CustomText(
                              //     text:
                              //         "I build things for the Android and web.",
                              //     textsize: 56.0,
                              //     color: Color(0xffCCD6F6).withOpacity(0.6),
                              //     fontWeight: FontWeight.w700,
                              //   ),
                              //   SizedBox(
                              //     height: size.height * .04,
                              //   ),
                              //   Wrap(
                              //     children: [
                              //       Text(
                              //         "I'm a freelancer based in Nashik, IN specializing in \nbuilding (and occasionally designing) exceptional websites, \napplications, and everything in between.",
                              //         style: TextStyle(
                              //           color: Colors.grey,
                              //           fontSize: 16.0,
                              //           letterSpacing: 2.75,
                              //           wordSpacing: 0.75,
                              //         ),
                              //       )
                              //     ],
                              //   ),
                              //   SizedBox(
                              //     height: size.height * .12,
                              //   ),

                              //   //get in tuch text
                              //   InkWell(
                              //     onTap: () {
                              //       method.launchEmail();
                              //     },
                              //     hoverColor:
                              //         Color(0xff64FFDA).withOpacity(0.2),
                              //     borderRadius: BorderRadius.circular(4.0),
                              //     child: Container(
                              //       alignment: Alignment.center,
                              //       height: size.height * 0.09,
                              //       width: size.width * 0.14,
                              //       decoration: BoxDecoration(
                              //         border: Border.all(
                              //           color: Color(0xff64FFDA),
                              //         ),
                              //         borderRadius:
                              //             BorderRadius.circular(4.0),
                              //       ),
                              //       child: Text(
                              //         "Get In Touch",
                              //         style: TextStyle(
                              //           color: Color(0xff64FFDA),
                              //           letterSpacing: 2.75,
                              //           wordSpacing: 1.0,
                              //           fontSize: 15.0,
                              //         ),
                              //       ),
                              //     ),
                              //   ),

                              //   SizedBox(
                              //     height: size.height * 0.20,
                              //   ),
                            ],
                          ),

                          //About Me
                          _wrapScrollTag(
                            index: 0,
                            child: About(),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),

                          //Where I've Worked
                          // _wrapScrollTag(
                          //   index: 1,
                          //   child: Column(
                          //     children: [
                          //       FeaturedHeading(),
                          //       SizedBox(
                          //         height: size.height * 0.02,
                          //       ),
                          //       Work()
                          //     ],
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: size.height * 0.10,
                          // ),
                          _wrapScrollTag(
                            index: 1,
                            child: Column(
                              children: [
                                Container(
                                  height: size.height / 1.5,
                                  width: size.width,
                                  decoration: new BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.25),
                                        spreadRadius: 0,
                                        blurRadius: 38,
                                        offset: const Offset(0, 9),
                                      ),
                                    ],
                                  ),
                                  child: Container(
                                    height: size.height / 1.5,
                                    width: size.width,
                                    decoration: new BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Color.fromARGB(45, 26, 103, 128),
                                      // boxShadow: [
                                      //   BoxShadow(
                                      //     color: Colors.black.withOpacity(0.25),
                                      //     spreadRadius: 0,
                                      //     blurRadius: 38,
                                      //     offset: const Offset(0, 9),
                                      // ),],
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 60.0, horizontal: 40.0),
                                    child: Column(children: [
                                      FeaturedHeading(),
                                      SizedBox(
                                        height: size.height * 0.02,
                                      ),
                                      Work(),
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.10,
                          ),

                          // //Some Things I've Built Main Project
                        ]),
                      ),
                      //Get In Touch
                      DestinationCarousel()
                      // _wrapScrollTag(
                      //     index: 3,
                      //     child: Column(
                      //       children: [
                      //         Container(
                      //           padding: EdgeInsets.all(15),
                      //           color: Color.fromARGB(255, 125, 218, 179),
                      //           child: Column(children: [
                      //             Container(
                      //               padding: EdgeInsets.all(30),
                      //               color: Colors.white,
                      //               child: Row(
                      //                 mainAxisSize: MainAxisSize.max,
                      //                 mainAxisAlignment:
                      //                     MainAxisAlignment.spaceAround,
                      //                 children: [
                      //                   Column(
                      //                     crossAxisAlignment:
                      //                         CrossAxisAlignment.start,
                      //                     children: <Widget>[
                      //                       Image.asset(
                      //                         'images/lologo.png',
                      //                       ),
                      //                     ],
                      //                   ),
                      //                   // Container(
                      //                   //   color: Colors.blueGrey,
                      //                   //   width: 2,
                      //                   //   height: 150,
                      //                   // ),
                      //                   Text(
                      //                       'Our Social Media\n\n081234445555\nofficialrexi\nofficialrexi',
                      //                       style: TextStyle(
                      //                           fontFamily: 'Poppins',
                      //                           fontWeight: FontWeight.normal)
                      //                       // s1: '081234445555',
                      //                       // s2: 'officialrexi',
                      //                       // s3: 'officialrexi',
                      //                       ),
                      //                   Text(
                      //                       'Keep in Touch\n\n0341667788\nJl. Kenangan no 145 Malang\nsupport@rexi.co.id',
                      //                       style: TextStyle(
                      //                         fontFamily: 'Poppins',
                      //                         fontWeight: FontWeight.normal,
                      //                       )),
                      //                 ],
                      //               ),
                      //             ),
                      //           ]),
                      //         ),
                      //       ],
                      //     ))
                    ],
                  ),
                ),
              )),
            ]),
          ],
        ),
      ),
    );
  }
}
