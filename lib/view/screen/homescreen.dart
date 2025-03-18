import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../controller/homescreen_controller.dart';
import '../../core/constant/color.dart';
import '../widget/home/custombottomappbarhome.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
          floatingActionButton:
          FloatingActionButton(
            elevation: 5,
                backgroundColor: AppColor.primaryColor,
                onPressed: () async{
                  await  launch("https://wa.me/+201092962578");
                },
                child: const Icon(Icons.message,color:Colors.white,size: 26,)
            ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          bottomNavigationBar: const CustomBottomAppBarHome(),
          body: WillPopScope(
              child: controller.listPage.elementAt(controller.currentpage),
              onWillPop: (){
                Get.defaultDialog(
                    title: "56".tr,
                    titleStyle: const TextStyle(fontWeight: FontWeight.bold,color: AppColor.primaryColor),
                    middleText: "57".tr,
                    middleTextStyle:const TextStyle(fontWeight: FontWeight.bold,color: AppColor.grey) ,
                    confirmTextColor:AppColor.primaryColor,
                    cancelTextColor: AppColor.primaryColor,
                    backgroundColor:AppColor.backgroundcolor,
                    buttonColor:Colors.white,
                    onCancel: (){
                    },
                    onConfirm: (){
                             exit(0);
                        }
                );
                return Future.value(false);
              }),
        ));
  }
}
