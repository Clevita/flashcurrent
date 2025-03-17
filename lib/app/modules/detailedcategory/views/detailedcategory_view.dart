import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../controllers/detailedcategory_controller.dart';

class DetailedcategoryView extends GetView<DetailedcategoryController> {
  const DetailedcategoryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(controller.categoryname.capitalizeFirst.toString(),textAlign: TextAlign.start,),
        centerTitle: true,
      ),
      body:Container(height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width, child: Obx(() => controller.is_loading.value == true
      ? Center(
          child: CircularProgressIndicator(
            color: Colors.blue,
            strokeWidth: 07,
          ),
        )
      : SingleChildScrollView(
        child: Column(
            children: [
              for (var news in controller.model_categorywisenews.value!.articles)
                GestureDetector(onTap: () {
                    controller.launchCustomUrl(Uri.parse(news.url.toString()) );
                },
                  child: Card(elevation: 10,
                    child: Container(
                      margin: EdgeInsets.only(left: 3,right: 3,top: 10,bottom: 10),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.blue,
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // color: Colors.blueGrey,
                          alignment: Alignment.center,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                news.urlToImage.toString(),
                                height: 180,
                                width: 170,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                    Container(
                      height: 200,
                      padding: EdgeInsets.only(left: 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title at the top
                        Container(
                          // color: Colors.green,
                          height:MediaQuery.of(context).size.width - 320 ,
                          width: MediaQuery.of(context).size.width - 190,
                          child: AutoSizeText(
                            news.title.toString(),
                            minFontSize: 11,
                            maxFontSize: 16,
                            maxLines:4 ,
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                  
                        // Subtitle (Aligned to bottom-right)
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            //  color: Colors.red,
                          height:MediaQuery.of(context).size.width - 340 ,
                            width: MediaQuery.of(context).size.width - 190,
                            child: AutoSizeText(
                              news.description.toString(),
                              minFontSize: 9,
                              maxFontSize: 13,
                               maxLines:4 ,
                              style: GoogleFonts.montserrat(
                  color: Colors.black38,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                    
                          // Push everything above to the top, making space for date at the bottom
                          Expanded(
                            child: Container(),
                          ),
                    
                          // Published Date (Bottom-Right Aligned)
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
                              child: Text(
                                news.publishedAt == null || news.publishedAt.toString().isEmpty
                      ? ""
                      : DateFormat('dd-MMM-yyyy').format(
                          DateFormat('yyyy-MM-dd').parse(news.publishedAt.toString()),
                        ),
                                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                         
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
      ))
    ));
  }
}
