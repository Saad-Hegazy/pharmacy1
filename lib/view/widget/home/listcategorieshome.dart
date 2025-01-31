import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/home_controller.dart';
import '../../../core/functions/translatefatabase.dart';
import '../../../data/model/categoriesmodel.dart';
import '../../../linkabi.dart';

class ListCategories extends GetView<HomeControllerImp> {
  const ListCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150, // Adjust the height for the horizontal list
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Enables horizontal scrolling
        padding: const EdgeInsets.all(8.0),
        itemCount: controller.categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16.0), // Spacing between items
            child: CategoryCard(
              categoriesModel: CategoriesModel.fromJson(controller.categories[index]),
              i: index,
            ),
          );
        },
      ),
    );
  }
}

class CategoryCard extends GetView<HomeControllerImp> {
  final CategoriesModel categoriesModel;
  final int? i;
  const CategoryCard({Key? key, required this.categoriesModel, required this.i})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToItems(controller.categories, i!, categoriesModel.categoriesId!.toString());
      },
      child: Container(
        width: 120, // Set the card width for horizontal scrolling
        decoration: BoxDecoration(
          color: Color(0xffF5F5F5),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          children: [
            // Image Container
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl: "${AppLink.imagestCategories}/${categoriesModel.categoriesImage}",
                fit: BoxFit.cover,
                height: 90, // Adjust the height of the image
                width: double.infinity,
              ),
            ),
            // Category Name
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "${translateDatabase(categoriesModel.categoriesNameAr, categoriesModel.categoriesName)}",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis, // Handle long text
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}