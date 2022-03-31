import 'package:flutter/material.dart';
import 'package:potrtfolio/Widget/CustomText.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.85,
      width: size.width - 100,
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
                Image.asset(
                  "images/ilustrasi1.png",
                  height: size.height * 0.6,
                  width: size.width * 0.6,
                )
              ],
            ),
          ),

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
                      Padding(
                        padding: const EdgeInsets.only(top: 60.0, left: 60.0),
                        child: CustomText(
                          text: "Rexi: Lebih Cepat, Lebih Tepat",
                          textsize: 38.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
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
                              "Rexi merupakan suatu platform dimana pengguna dapat berinvestasi dalam bentuk reksadana seara aman, karena telah diverifikasi oleh Otoritas Jasa Keunagan(OJK)\n\nMemiliki tabungan berlebih? Pengguna juga dapat melakukan donasi langsung melalui portofolio reksadana yang mereka miliki, sehingga tidak perlu dilakukan pencairan reksadana secara manual, sehingga donasi yang dilakukan dapat tepat sasaran.\n\n",
                          textsize: 18.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                          letterSpacing: 0.75,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
