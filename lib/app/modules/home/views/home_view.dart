import 'package:flashcurrent/Colors.dart';
import 'package:flashcurrent/Constants.dart';
import 'package:flashcurrent/app/modules/home/views/categories.dart';
import 'package:flashcurrent/app/modules/home/views/poupular_newslist.dart';
import 'package:flashcurrent/app/modules/home/views/topstory_section.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black26,blurRadius: 30,offset: Offset(0, 20))]),
        child: ClipRRect(borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(elevation: 10,type: BottomNavigationBarType.shifting ,
            items: [
              BottomNavigationBarItem(backgroundColor: Colors.red,
                icon: Icon(Icons.home,size: 20,),label: "Home"
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_stable,size: 20),label: "Video"
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.podcasts,size: 20),label: "Podcast"
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),label: "Categories"
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.verified_user),label: "User"
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //appbar
            Container(
              height: 80,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/Bolt.png",
                        height: 30,
                        width: 30,
                      ),
                      Image.asset(
                        "assets/images/Flash Current.png",
                        height: 40,
                        width: 130,
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/images/2289_SkVNQSBGQU1PIDEwMjgtMTE2 1.png",
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                // color: Colors.amber,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(17),
                        child: Text(
                          "Categories",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colours().primary_backgroundcolor_text),
                        ),
                      ),
                      Categories_Section(context, controller),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17, bottom: 17),
                        child: Text(
                          "Top Story Section",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colours().primary_backgroundcolor_text),
                        ),
                      ),
                      // Top story section
                      TopStorySection(context, controller),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17, bottom: 17),
                        child: Text(
                          "Popular News List",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colours().primary_backgroundcolor_text),
                        ),
                      ),
                      //
                      PopularNewsList(context, controller)
                    ],
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
