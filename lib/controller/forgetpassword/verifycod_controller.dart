import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/class/statusrequest.dart';
import '../../core/constant/color.dart';
import '../../core/constant/routes.dart';
import '../../core/functions/handlingData.dart';
import '../../data/datasource/remote/forgetpassword/verfycode.dart';
abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword(String verifycode);
}

class VerifyCodeControllerImp extends VerifyCodeController {
  String? email;

  VerifyCodeForgetPasswordData verifyCodeForgetPasswordData =
  VerifyCodeForgetPasswordData(Get.find());

  StatusRequest statusRequest=StatusRequest.none;
  @override
  void onInit() {
    email = Get.arguments['email'];

    super.onInit();
  }
  @override
  checkCode() {}

  @override
  goToResetPassword(verifycode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
    await verifyCodeForgetPasswordData.postdata(email!, verifycode);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.resetPassword , arguments: {
          "email" : email
        });
      } else {
        Get.defaultDialog(
            title: "158".tr, middleText: "169".tr,middleTextStyle: TextStyle(color:Colors.black));
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  reSend(){
    verifyCodeForgetPasswordData.resendData(email!);
    Get.rawSnackbar(
        backgroundColor:AppColor.primaryColor,
        title: "89".tr,
        messageText:  Text("185".tr,style: TextStyle(color: Colors.white),));
  }
}