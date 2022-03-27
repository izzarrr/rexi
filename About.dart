import 'package:flutter/material.dart';
import 'package:potrtfolio/Widget/CustomText.dart';

class About extends StatelessWidget {
  //Widget technology(BuildContext context, String text) {
    //return Row(
      //children: [
        //Icon(
          //Icons.skip_next,
          //color: Color.fromARGB(26, 204, 255, 0),
          //size: 14.0,
        //),
        //SizedBox(
          //width: MediaQuery.of(context).size.width * 0.01,
        //),
        //Text(
          //text,
          //style: TextStyle(
            //color: Color.fromARGB(255, 0, 0, 0),
            //letterSpacing: 1.75,
          //),
        //)
      //],
    //);
  //}

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.85,
      width:size.width - 100,
      child: Row(
        children: [
          //About me
          Container(
            height: size.height / 0.2,
            width: size.width / 2 - 100,
            color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children: [
                  Image.asset("images/ilustrasi1.png",
                  height: size.height*0.6,
                  width: size.width*0.6,
                    
                  )
                  
                  // Positioned(
                  //   top: size.height * 0.12,
                  //   left: size.width * 0.120,
                  //   child: Card(
                  //     color: Color(0xff61F9D5),
                  //     child: Container(
                  //       margin: EdgeInsets.all(2.75),
                  //       height: size.height / 2,
                  //       width: size.width / 5,
                  //       color: Color(0xff0A192F),
                  //     ),
                  //   ),
                  // ),
                  // CustomImageAnimation()
                ],
              ),
            ),
            // height: size.height * 0.45,
            // width: size.width / 2 - 100,
            // child: Column(
            //   children: [
            //     //About me title
            //     Row(
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: [
            //         // CustomText(
            //         //   text: "01.",
            //         //   textsize: 20.0,
            //         //   color: Color(0xff61F9D5),
            //         //   fontWeight: FontWeight.w700,
            //         // ),
            //         // SizedBox(
            //         //   width: 12.0,
            //         // ),
            //          Padding(
            //           padding: const EdgeInsets.symmetric(horizontal: 40.0),
            //           child: CustomText(
            //           text: "About Us",
            //           textsize: 28.0,
            //           color: Color.fromARGB(255, 0, 0, 0),
            //           fontWeight: FontWeight.w700,
            //           ),
            //          ),
            //         SizedBox(
            //           width: size.width * 0.01,
            //         ),
            //         // Container(
            //         //   width: size.width / 4,
            //         //   height: 1.10,
            //         //   color: Color(0xff303C55),
            //         // ),\
            //       ],
            //     ),

            //     SizedBox(
            //       height: size.height * 0.03,
            //     ),

            //     //About me desc
            //     Wrap(
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.symmetric(horizontal: 60.0),
            //           child: CustomText(
            //           text:
            //               "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n",
            //           textsize: 16.0,
            //           color: Color.fromARGB(255, 0, 0, 0),
            //           letterSpacing: 0.75,
            //         ),
            //         ),
            //         // CustomText(
            //         //   text:
            //         //       "Shortly currently, I am purshuing my Bachlor's degree in Computter science and Engineering at University of Pune, as well as doing freelancing where I work on a wide variety of interesting and meaningful projects on a daily basis.\n\n",
            //         //   textsize: 16.0,
            //         //   color: Color(0xff828DAA),
            //         //   letterSpacing: 0.75,
            //         // ),
            //         // CustomText(
            //         //   text:
            //         //       "Here are a few technologies I've been working with recently:\n\n",
            //         //   textsize: 16.0,
            //         //   color: Color(0xff828DAA),
            //         //   // fontWeight: FontWeight.w500,
            //         //   letterSpacing: 0.75,
            //         // ),
            //       ],
            //     ),

            //     // Container(
            //     //   height: size.height * 0.15,
            //     //   width: size.width,
            //     //   child: Wrap(  
            //     //     children: [
            //     //       Container(
            //     //         width: size.width * 0.20,
            //     //         height: size.height * 0.15,
            //     //         child: Column(
            //     //           children: [
            //     //             technology(context, "Dart"),
            //     //             technology(context, "Flutter"),
            //     //             technology(context, "Firebase"),
            //     //             technology(context, "UI/UX (Adobe Xd)"),
            //     //           ],
            //     //         ),
            //     //       ),
            //     //       Container(
            //     //         width: size.width * 0.15,
            //     //         height: size.height * 0.15,
            //     //         child: Column(
            //     //           children: [
            //     //             technology(context, "C/C++, Java."),
            //     //             technology(context, "HTML & (S)CSS"),
            //     //             technology(context, "MYSQL"),
            //     //             technology(context, "Git - Github"),
            //     //           ],
            //     //         ),
            //     //       )
            //     //     ],
            //     //   ),
            //     // )
            //   ],
          //    ),
          // ),

          //Profile Image
          Expanded(
            child: Container(
              height: size.height * 0.6,
            width: size.width / 2 - 100,
            child: Column(
              children: [
                //About me title
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // CustomText(
                    //   text: "01.",
                    //   textsize: 20.0,
                    //   color: Color(0xff61F9D5),
                    //   fontWeight: FontWeight.w700,
                    // ),
                    // SizedBox(
                    //   width: 12.0,
                    // ),
                     Padding(
                      padding: const EdgeInsets.only(top:60.0,left:60.0),
                      child: CustomText(
                      text: "About Us",
                      textsize: 38.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w700,
                      ),
                     ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    // Container(
                    //   width: size.width / 4,
                    //   height: 1.10,
                    //   color: Color(0xff303C55),
                    // ),\
                  ],
                ),

                SizedBox(
                  height: size.height * 0.03,
                ),

                //About me desc
                Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60.0),
                      child: CustomText(
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n",
                      textsize: 18.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                      letterSpacing: 0.75,
                    ),
                    ),
                    // CustomText(
                    //   text:
                    //       "Shortly currently, I am purshuing my Bachlor's degree in Computter science and Engineering at University of Pune, as well as doing freelancing where I work on a wide variety of interesting and meaningful projects on a daily basis.\n\n",
                    //   textsize: 16.0,
                    //   color: Color(0xff828DAA),
                    //   letterSpacing: 0.75,
                    // ),
                    // CustomText(
                    //   text:
                    //       "Here are a few technologies I've been working with recently:\n\n",
                    //   textsize: 16.0,
                    //   color: Color(0xff828DAA),
                    //   // fontWeight: FontWeight.w500,
                    //   letterSpacing: 0.75,
                    // ),
                  ],
                ),

                // Container(
                //   height: size.height * 0.15,
                //   width: size.width,
                //   child: Wrap(  
                //     children: [
                //       Container(
                //         width: size.width * 0.20,
                //         height: size.height * 0.15,
                //         child: Column(
                //           children: [
                //             technology(context, "Dart"),
                //             technology(context, "Flutter"),
                //             technology(context, "Firebase"),
                //             technology(context, "UI/UX (Adobe Xd)"),
                //           ],
                //         ),
                //       ),
                //       Container(
                //         width: size.width * 0.15,
                //         height: size.height * 0.15,
                //         child: Column(
                //           children: [
                //             technology(context, "C/C++, Java."),
                //             technology(context, "HTML & (S)CSS"),
                //             technology(context, "MYSQL"),
                //             technology(context, "Git - Github"),
                //           ],
                //         ),
                //       )
                //     ],
                //   ),
                // )
                      ],
                    ),
                  ),
                  // Positioned(
                  //   top: size.height * 0.12,
                  //   left: size.width * 0.120,
                  //   child: Card(
                  //     color: Color(0xff61F9D5),
                  //     child: Container(
                  //       margin: EdgeInsets.all(2.75),
                  //       height: size.height / 2,
                  //       width: size.width / 5,
                  //       color: Color(0xff0A192F),
                  //     ),
                  //   ),
                  // ),
                  // CustomImageAnimation()
                // ),
                // ],
            //   ),
            // );
          ),
        ],
      ),
    );
  }
}

// class CustomImageAnimation extends StatefulWidget {
//   CustomImageAnimation({Key key}) : super(key: key);

//   @override
//   _CustomImageAnimationState createState() => _CustomImageAnimationState();
// }

// class _CustomImageAnimationState extends State<CustomImageAnimation> {
//   Color customImageColor = Color(0xff61F9D5).withOpacity(0.5);
//   // ignore: unused_field
//   int _enterCounter = 0;
//   // ignore: unused_field
//   int _exitCounter = 0;
//   double x = 0.0;
//   double y = 0.0;

//   void _incrementEnter(PointerEvent details) {
//     setState(() {
//       _enterCounter++;
//     });
//   }

//   void _incrementExit(PointerEvent details) {
//     setState(() {
//       customImageColor = Color(0xff61F9D5).withOpacity(0.5);
//       _exitCounter++;
//     });
//   }

//   void _updateLocation(PointerEvent details) {
//     setState(() {
//       customImageColor = Colors.transparent;
//       x = details.position.dx;
//       y = details.position.dy;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return MouseRegion(
//       onEnter: _incrementEnter,
//       onHover: _updateLocation,
//       onExit: _incrementExit,
//       child: Stack(
//         children: [
//           Container(
//             height: size.height / 2,
//             width: size.width / 5,
//             color: Colors.black54,
//             child: Image(
//               fit: BoxFit.cover,
//               image: AssetImage("images/ilustrasi1.png"),
//             ),
//           ),
//           Container(
//             height: size.height / 2,
//             width: size.width / 5,
//             color: customImageColor,
//           ),
//         ],
//       ),
//     );
//   }
// }
