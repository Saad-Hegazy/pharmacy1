import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../controller/onboarding_controller.dart';
import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';
class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged:(val) {
        controller.onPageChanged(val);
      },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(children: [
          const SizedBox(
            height: 10,
          ),
          Text(onBoardingList[i].title!,
              style:const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20,  color:AppColor.black,
              ),
          ),
          const SizedBox(
            height: 80,
          ),
          SvgPicture.asset(
            onBoardingList[i].image!,
           // width: 200,
            height: Get.width/1.5,
            fit: BoxFit.fill,
          ),
         const  SizedBox(
            height: 65,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].body!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                height: 2,
                color: AppColor.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ) ,
          )
          ),
        ])
    );
  }
}
