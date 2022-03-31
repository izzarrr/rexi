import 'package:carousel_slider/carousel_slider.dart';
// import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

class DestinationCarousel extends StatefulWidget {
  // DestinationCarousel(Type list, List<bool> list2);

  @override
  _DestinationCarouselState createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<DestinationCarousel> {
  final String imagePath = 'assets/images/';

  final CarouselController _controller = CarouselController();

  List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  List _isSelected = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  int _current = 0;

  final List<String> images = [
    'assets/images/danareksaEdit.png',
    'assets/images/manulifeEdit.png',
    'assets/images/schrodersEdit.png',
    'assets/images/bniEdit.png',
    'assets/images/sucorEdit.png',
    'assets/images/avristEdit.png',
    'assets/images/bahanaEdit.png',
    'assets/images/bataviaEdit.png',
    'assets/images/danamasEdit.png',
    'assets/images/mandiriEdit.png',
  ];

  final List<String> places = [
    'Danareksa',
    'Manulife',
    'Schroders',
    'BNI',
    'Sucor',
    'Avrist',
    'Bahana',
    'Batavia',
    'Danamas',
    'Mandiri',
  ];

  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Image.asset(
              element,
              fit: BoxFit.cover,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);

    return Stack(
      children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              enlargeCenterPage: true,
              aspectRatio: 14 / 4,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                  for (int i = 0; i < imageSliders.length; i++) {
                    if (i == index) {
                      _isSelected[i] = true;
                    } else {
                      _isSelected[i] = false;
                    }
                  }
                });
              }),
          carouselController: _controller,
        ),
        // AspectRatio(
        //   aspectRatio: 18 / 13.5,
        //   child: Center(
        //     child: Text(
        //       places[_current],
        //       style: TextStyle(
        //         letterSpacing: 3,
        //         fontFamily: 'Poppins',
        //         fontSize: screenSize.width / 25,
        //         color: Color.fromARGB(255, 0, 0, 0),
        //       ),
        //     ),
        //   ),
        // ),

        // ResponsiveWidget.isSmallScreen(context)
        //     ? Container()
        AspectRatio(
          aspectRatio: 18 / 5.5,
          child: Center(
            heightFactor: 4,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                //ngerubah slide bar nya
                padding: EdgeInsets.only(
                  left: screenSize.width / 5,
                  right: screenSize.width / 5,
                ),
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: screenSize.height / 30,
                      bottom: screenSize.height / 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int i = 0; i < places.length; i++)
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                onHover: (value) {
                                  setState(() {
                                    value
                                        ? _isHovering[i] = true
                                        : _isHovering[i] = false;
                                  });
                                },
                                onTap: () {
                                  _controller.animateToPage(i);
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: screenSize.height / 80,
                                      bottom: screenSize.height / 90),
                                  // child: Text(
                                  //   places[i],
                                  //   style: TextStyle(
                                  //     color: _isHovering[i]
                                  //         ? Colors.blueGrey[900]
                                  //         : Colors.blueGrey,
                                  //   ),
                                  // ),
                                ),
                              ),
                              Visibility(
                                maintainSize: true,
                                maintainAnimation: true,
                                maintainState: true,
                                visible: _isSelected[i],
                                child: AnimatedOpacity(
                                  duration: Duration(milliseconds: 400),
                                  opacity: _isSelected[i] ? 1 : 0,
                                  child: Container(
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    width: screenSize.width / 20,
                                  ),
                                ),
                              )
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
