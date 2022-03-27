// import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

class FeaturedHeading extends StatelessWidget {
  // const FeaturedHeading({
  //   Key? key,
  //   required this.size,
  // }) : super(key: key);

  // final Size size;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        top: size.height * 0.06,
        left: size.width / 15,
        right: size.width / 15,
      ),
      // child: ResponsiveWidget.isSmallScreen(context)
          //? 
          // child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     children: [
          //       Row(),
          //       Text(
          //         'How it Works',
          //         style: TextStyle(
          //           fontSize: 24,
          //           fontFamily: 'Montserrat',
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //       // SizedBox(height: 5),
          //       // Text(
          //       //   'Unique wildlife tours & destinations',
          //       //   textAlign: TextAlign.end,
          //       // ),
          //       // SizedBox(height: 10),
          //     ],
          //   )
          // : 
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Cara Kerja',
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Expanded(
                //   child: Text(
                //     'Unique wildlife tours & destinations',
                //     textAlign: TextAlign.end,
                //   ),
                // ),
              ],
            ),
    );
  }
}
