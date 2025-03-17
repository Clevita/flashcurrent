import 'package:carousel_slider/carousel_slider.dart';
import 'package:flashcurrent/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

Widget TopStorySection(context, HomeController controller) {
  return Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      // color: Colors.blue,
      child: Obx(
        () => controller.is_loading_topstorysection.value == true
            ? Center(
                child: CircularProgressIndicator(
                  // color: Colors.blue,
                  strokeWidth: 0.7,
                ),
              )
            : CarouselSlider.builder(
                itemCount:
                    controller.model_topstorysection.value!.articles.length,
                options: CarouselOptions(
                    height: 250,
                    onPageChanged: (index, reason) {
                      controller.pageindex.value=index;
                    },
                    // viewportFraction: 1,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height),
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return GestureDetector(onTap: () {
                    controller.launchCustomUrl(Uri.parse( controller.model_topstorysection.value!
                                  .articles[itemIndex].url.toString()));
                  },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.grey,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              height: 250,
                              width: MediaQuery.of(context).size.width,
                              controller.model_topstorysection.value!
                                  .articles[itemIndex].urlToImage
                                  .toString(),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            height: 250,
                            margin: EdgeInsets.only(top: 150),
                            padding: EdgeInsets.only(left: 10),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            child: Text(
                              controller.model_topstorysection.value!
                                  .articles[itemIndex].title
                                  .toString(),
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            // height: 250,
                            margin: EdgeInsets.only(top: 5),
                            padding: EdgeInsets.only(left: 10),
                            // width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            child: controller.model_topstorysection.value!
                                            .articles[itemIndex].publishedAt
                                            .toString() ==
                                        "" ||
                                    controller.model_topstorysection.value!
                                            .articles[itemIndex].publishedAt ==
                                        null
                                ? Text("")
                                : Text(
                                    DateFormat('dd-MMM-yyyy').format(
                                        DateFormat('yyyy-mm-dd').parse(controller
                                            .model_topstorysection
                                            .value!
                                            .articles[itemIndex]
                                            .publishedAt
                                            .toString())),
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                          )
                        ],
                      ),
                      // child: ne.asset(controller.model_topstorysection.value.articles[itemIndex].urlToImage),
                    ),
                  );
                }),
      ));
}
