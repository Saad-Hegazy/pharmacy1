import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/signup_controller.dart';
import '../../../core/class/handlingdataview.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/alertexitapp.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/custombuttomauth.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtextformauthmobile.dart';
import '../../widget/auth/customtexttitleauth.dart';
import '../../widget/auth/textsignup.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
     Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.primaryColor,
        elevation: 0.0,
        title: Text('17'.tr,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: Colors.white)),
      ),
      body: WillPopScope(
          onWillPop: alertExitApp,
          child: GetBuilder<SignUpControllerImp>
            (builder:(controller)=>
            HandlingDataRequest(
            statusRequest : controller.statusRequest,widget:
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Form(
                  key: controller.formstate,
                  child: ListView(children: [
                    const SizedBox(height: 20),
                    CustomTextTitleAuth(text: "10".tr),
                    const SizedBox(height: 10),
                    CustomTextBodyAuth(text: "24".tr),
                    const SizedBox(height: 15),
                CustomTextFormAuth(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 3, 20, "username");
                  },
                  mycontroller: controller.username,
                  hinttext: "23".tr,
                  iconData: Icons.person_outline,
                  labeltext: "20".tr,
                  // mycontroller: ,
                ),
                CustomTextFormAuth(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 3, 40, "email");
                  },
                  mycontroller: controller.email,
                  hinttext: "12".tr,
                  iconData: Icons.email_outlined,
                  labeltext: "18".tr,
                  // mycontroller: ,
                ),
                 CustomTextFormAuthMobile(
                  isNumber: true,
                  valid: (val) {
                    return validInput(val!, 8, 15, "phone");
                  },
                  mycontroller: controller.phone,
                  hinttext: "22".tr,
                  iconData: Icons.phone_android_outlined,
                  labeltext: "21".tr,
                  // mycontroller: ,
                ),
                CustomTextFormAuth(
                  obscureText: controller.isshowpassword,
                  onTapIcon: () {
                    controller.showPassword();
                  },
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 3, 30, "password");
                  },
                  mycontroller: controller.password,
                  hinttext: "13".tr,
                  iconData: Icons.remove_red_eye_outlined,
                  labeltext: "19".tr,
                  // mycontroller: ,
                ),
                CustomButtomAuth(
                    text: "17".tr,
                    onPressed: () {
                      controller.signUp();
                    }),
                const SizedBox(height: 40),
                CustomTextSignUpOrSignIn(
                  textone: "25".tr,
                  texttwo: "26".tr,
                  onTap: () {
                    controller.goToSignIn();
                  },
                ),

              ]),
            ),

          )
          )
      )
      ),
    );
  }
}