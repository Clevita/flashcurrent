import 'package:flashcurrent/Constants.dart';
import 'package:flashcurrent/app/modules/home/model/model_topstorysectiondata.dart';
import 'package:flashcurrent/enumConstants.dart';
import 'package:flashcurrent/provider_api.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailedcategoryController extends GetxController {
  //TODO: Implement DetailedcategoryController

  final count = 0.obs;
  var categoryname="";
  var model_categorywisenews=Rxn<ModelTopstorysection>();
  var is_loading=true.obs;
  @override
  void onInit() {
    categoryname=Get.arguments;
    Get_CategoryNews();
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

  Future<void> Get_CategoryNews() async{
    is_loading.value=true;
    try {
      var responce=await Provider().Get_CategoryWiseNews(categoryname: categoryname.toLowerCase());
      if(responce['code']==200){
        model_categorywisenews.value=ModelTopstorysection.fromJson(responce['message']);
        is_loading.value=false;
      }else{
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
