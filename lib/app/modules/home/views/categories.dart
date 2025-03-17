import 'package:flashcurrent/app/modules/home/controllers/home_controller.dart';
import 'package:flashcurrent/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Widget Categories_Section(context, HomeController controller) {
  return Obx(() => Container(
        height: 85,
        width: MediaQuery.of(context).size.width,
        // color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (var category in controller.modeldata.value!.listdata!)
              GestureDetector(onTap: () {
                   category.isSelected = !(category.isSelected!);
                          controller.modeldata.refresh();
                          print(controller.modeldata.toJson());
                Get.toNamed(Routes.DETAILEDCATEGORY,arguments: category.title);
              },
                child: Container(
                    child: Column(
                  children: [
                    Material(
                      shape: CircleBorder(),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        splashColor: Colors.black26,
                        onTap: () {
                          category.isSelected = !(category.isSelected!);
                          controller.modeldata.refresh();
                          print(controller.modeldata.toJson());
                             Get.toNamed(Routes.DETAILEDCATEGORY,arguments: category.title);
                        },
                        child: Ink.image(
                          image: AssetImage(category.image.toString()),
                          fit: BoxFit
                              .cover, //Add this line for center crop or use 2nd way
                          height: 60,
                          width: 60,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      category.title.toString(),
                      style: GoogleFonts.montserrat(
                          color: category.isSelected == true
                              ? Colors.red
                              : Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                )),
              ),
          ],
        ),
      ));
}
