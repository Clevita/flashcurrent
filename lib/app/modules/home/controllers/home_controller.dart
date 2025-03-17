import 'package:flashcurrent/Constants.dart';
import 'package:flashcurrent/app/modules/home/model/model_categoriesdata.dart';
import 'package:flashcurrent/app/modules/home/model/model_topstorysectiondata.dart';
import 'package:flashcurrent/app/routes/app_pages.dart';
import 'package:flashcurrent/enumConstants.dart';
import 'package:flashcurrent/provider_api.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  var modeldata = Rxn<ModelCategorydata>();
  var model_topstorysection = Rxn<ModelTopstorysection>();
  var model_popularnewslist = Rxn<ModelTopstorysection>();
  var is_loading_topstorysection = true.obs;
  var is_loading_popularnewslist = true.obs;
  var is_loadig = true.obs;
  var pageindex = 0.obs;

  @override
  void onInit() async{
    Get_Categoriesdata();
   await Future.wait([Get_topstorySection(), Get_PopularNewsList()]);

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Get_Categoriesdata() async {
    var responce = {
      "listdata": [
        {
          "id": 1,
          "title": "Explore",
          "image": "assets/images/explore.jpeg",
          "is_selected": false
        },
        {
          "id": 2,
          "title": "Entertainment",
          "image": "assets/images/live_nation_cover.jpeg",
          "is_selected": false
        },
        {
          "id": 3,
          "title": "Lifestyle",
          "image": "assets/images/images.jpeg",
          "is_selected": false
        },
        {
          "id": 4,
          "title": "Travel",
          "image": "assets/images/istockphoto-1500563478-612x612.jpg",
          "is_selected": false
        }
      ]
    };
    modeldata.value = ModelCategorydata.fromJson(responce);
  }

 Future<void> Get_topstorySection() async {
    try {
      is_loading_topstorysection.value = true;
      var responce = await Provider().Get_TopStorySectionData();
      print(responce);
      if (responce['code'] == 200) {
        model_topstorysection.value =
            ModelTopstorysection.fromJson(responce['message']);
        is_loading_topstorysection.value = false;
      } else {
        Constants.Awsome_SnackBar(
            elevation: 10,
            title: "OOPS!",
            message: responce['message'].toString(),
            snackbar_type: Awsome_snackbar_contentype.failure.name);
      }
    } catch (e) {
      Constants.Awsome_SnackBar(
          elevation: 10,
          title: "OOPS!",
          message: e.toString(),
          snackbar_type: Awsome_snackbar_contentype.failure.name);
    }
  }

  Future<void> Get_PopularNewsList() async {
    try {
      is_loading_popularnewslist.value = true;
      var responce = await Provider().Get_PopularNewsListData();
      print(responce);
      if (responce['code'] == 200) {
        model_popularnewslist.value =
            ModelTopstorysection.fromJson(responce['message']);
        is_loading_popularnewslist.value = false;
      } else {
        Constants.Awsome_SnackBar(
            elevation: 10,
            title: "OOPS!",
            message: responce['message'].toString(),
            snackbar_type: Awsome_snackbar_contentype.failure.name);
      }
    } catch (e) {
      Constants.Awsome_SnackBar(
          elevation: 10,
          title: "OOPS!",
          message: e.toString(),
          snackbar_type: Awsome_snackbar_contentype.failure.name);
    }
  }

  void launchCustomUrl(Uri url) async {
  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication);
  } else {
    throw Exception("Unable to launch URL");
  }
}

}
