import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/favorite_controller.dart';
import '../../controller/offers_controller.dart';
import '../../core/class/handlingdataview.dart';
import '../../core/constant/routes.dart';
import '../widget/customappbar.dart';
import '../widget/offers/customitemsoffer.dart';
import 'home.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OffersController());
 Get.put(FavoriteController());

    return GetBuilder<OffersController>(builder:(controller)=> Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        children: [
          CustomAppBar(
            mycontroller: controller.search!,
            titleappbar: "53".tr,
            // onPressedIcon: () {},
            onPressedSearch: () {
              controller.onSearchItems();
            },
            onChanged: (val) {
              controller.checkSearch(val);
            },
            onPressedIconFavorite: () {
              Get.toNamed(AppRoute.myfavroite);
            },
          ),
          const SizedBox(height: 20,),
          !controller.isSearch?
          HandlingDataRequest(
              statusRequest: controller.statusRequest,
              widget: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap:true,
                  itemCount: controller.data.length,
                  itemBuilder: (context,index)=>CustomListItemsOffer(
                      itemsModel: controller.data[index])) ):ListItemsSearch(listdatamodel: controller.listdata)
        ],
      ),
    ));
  }
}
