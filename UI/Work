import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:potrtfolio/Widget/CustomText.dart';
import 'package:potrtfolio/Widget/Workbox.dart';

class Work extends StatefulWidget {
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  final List<String> assets = [ 'Mendaftar Akun','Jual/Beli Reksadana','Donasi'];

  final List<String> title = [
    'Pengguna dapat mendaftar akun menggunakan email atau nomor telpon.', 
    'Kami menyediakan berbagai macam produk reksadana untuk diperjualbelikan.', 
    'Melakukan donasi dengan berbagai macam pilihan pembayaran seperti degan reksadana atau transfer bank.'
    ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return 
    //ResponsiveWidget.isSmallScreen(context)? 
    Padding(
            padding: EdgeInsets.only(top: size.height / 50),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: size.width / 15),
                  ...Iterable<int>.generate(assets.length).map(
                    (int pageIndex) => Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                        height: size.width / 30,
                        width: size.width / 6,
                        decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        color: Color.fromRGBO( 26, 102, 128, 1),
                         
                        ),
                        
                        padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 2),
                                  
                        child: SizedBox(
                        height: size.width / 25,
                        width: size.width / 4,
                        // child: ClipRRect(
                                // borderRadius: BorderRadius.circular(5.0),
                                child: Text(
                                  assets[pageIndex],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  ),
                                ),
                                  // fit: BoxFit.cover,
                        // ),
                        ),
                      ),
                      Container(
                        height: size.width / 10,
                        width: size.width / 5,
                        // decoration: new BoxDecoration(
                        // shape: BoxShape.rectangle,
                        // color: Colors.white,
                        // boxShadow: [
                        //     BoxShadow(
                        //       color: Colors.grey.withOpacity(0.5),
                        //       spreadRadius: 1,
                        //       blurRadius: 4,
                        //       offset: Offset(0, 3), // changes position of shadow
                        //     ),
                        //   ],
                        // ), 
                        
                        padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 20),
                                  
                        child:SizedBox(
                        height: size.width / 10,
                        width: size.width / 5,
                        child: ClipRRect(
                                // borderRadius: BorderRadius.circular(5.0),
                                child: Text(
                                  title[pageIndex],
                                  style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                  ),
                                ),
                                  // fit: BoxFit.cover,
                        ),
                      ),
                      ),
                          ],
                        ),
                        SizedBox(width: size.width / 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
          // Padding(
          //   padding: EdgeInsets.only(
          //     top: size.height * 0.06,
          //     left: size.width / 15,
          //     right: size.width / 15,
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       ...Iterable<int>.generate(assets.length).map(
          //         (int pageIndex) => Column(
          //           children: [
          //             Container(
          //               height: size.width / 25,
          //               width: size.width / 4,
          //               decoration: new BoxDecoration(
          //               shape: BoxShape.rectangle,
          //               borderRadius: BorderRadius.all(Radius.circular(15.0)),
          //               color: Color.fromRGBO( 26, 102, 128, 1),
                         
          //               ),
                        
          //               padding: const EdgeInsets.symmetric(
          //                                 vertical: 10, horizontal: 10),
                                  
          //               child: SizedBox(
          //               height: size.width / 25,
          //               width: size.width / 4,
          //               // child: ClipRRect(
          //                       // borderRadius: BorderRadius.circular(5.0),
          //                       child: Text(
          //                         assets[pageIndex],
          //                         textAlign: TextAlign.center,
          //                         style: TextStyle(
          //                         fontSize: 18,
          //                         fontFamily: 'Montserrat',
          //                         fontWeight: FontWeight.w700,
          //                         color: Colors.white,
          //                         ),
          //                       ),
          //                         // fit: BoxFit.cover,
          //               // ),
          //               ),
          //             ),
          //             Container(
          //               height: size.width / 10,
          //               width: size.width / 4,
          //               decoration: new BoxDecoration(
          //               shape: BoxShape.rectangle,
          //               color: Colors.white,
          //               boxShadow: [
          //                   BoxShadow(
          //                     color: Colors.grey.withOpacity(0.5),
          //                     spreadRadius: 1,
          //                     blurRadius: 4,
          //                     offset: Offset(0, 3), // changes position of shadow
          //                   ),
          //                 ],
          //               ), 
                        
          //               padding: const EdgeInsets.symmetric(
          //                                 vertical: 10, horizontal: 20),
                                  
          //               child:SizedBox(
          //               height: size.width / 10,
          //               width: size.width / 4,
          //               child: ClipRRect(
          //                       // borderRadius: BorderRadius.circular(5.0),
          //                       child: Text(
          //                         title[pageIndex],
          //                         style: TextStyle(
          //                         fontSize: 14,
          //                         fontFamily: 'Montserrat',
          //                         fontWeight: FontWeight.w400,
          //                         ),
          //                       ),
          //                         // fit: BoxFit.cover,
          //               ),
          //             ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // );
  }
}
