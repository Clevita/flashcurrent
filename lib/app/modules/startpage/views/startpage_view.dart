import 'package:flashcurrent/Colors.dart';
import 'package:flashcurrent/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../controllers/startpage_controller.dart';

class StartpageView extends GetView<StartpageController> {
  const StartpageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/lotties/startpagelottie.json'),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left:17,top: 17,right: 17,bottom: 2),
              child: Text("This is what really happened, reported by a free press to a free people.  It is the raw material of history; it is the story of our own times.",style:GoogleFonts.montserrat(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400) ,),
            ),
            Align(alignment: Alignment.centerLeft, child: Padding(
              padding: const EdgeInsets.only(left: 35,top: 5),
              child: Text("Henry Steel Commager",style:GoogleFonts.montserrat(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700) ,),
            )),
            SizedBox(height: 90,),
            Container(
                    height: 55,
                    width: 317,
                    decoration: BoxDecoration(
                        color: Colours().primary_backgroundcolor,
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    child: ElevatedButton(
                      onPressed: () {
                  Get.offAllNamed(Routes.HOME);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colours().primary_backgroundcolor,

                        // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      ),
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: GoogleFonts.montserrat(
                              fontSize: 20,
                              color: Colours().redcolor,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
