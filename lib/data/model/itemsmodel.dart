import 'package:get/get.dart';
import '../../core/services/services.dart';

class ItemsModel {
  int? itemsId;
  String? itemsName;
  String? itemsNameAr;
  String? itemsDesc;
  String? itemsDescAr;
  String? itemsImage;
  var itemsCount;
  int? itemsActive;
  int? itemsquantityinbox;
  num? itemsPrice;
  num? itemspricrofbox;
  num? itemsDescount;
  String? itemsDate;
  int? itemsCat;
  int? categoriesId;
  String? categoriesName;
  String? categoriesNameAr;
  String? categoriesImage;
  String? categoriesDatetime;
  int? favorite;
  ItemsModel(
      {this.itemsId,
        this.itemsName,
        this.itemsNameAr,
        this.itemsDesc,
        this.itemsDescAr,
        this.itemsImage,
        this.itemsCount,
        this.itemsActive,
        this.itemsquantityinbox,
        this.itemsPrice,
        this.itemspricrofbox,
        this.itemsDescount,
        this.itemsDate,
        this.itemsCat,
        this.categoriesId,
        this.categoriesName,
        this.categoriesNameAr,
        this.categoriesImage,
        this.categoriesDatetime,
        this.favorite});
  MyServices myServices = Get.find();

  ItemsModel.fromJson(Map<dynamic, dynamic> json) {
    itemsId = json['items_id'];
    itemsName = json['items_name'];
    itemsNameAr = json['items_name_ar'];
    itemsDesc = json['items_desc'];
    itemsDescAr = json['items_desc_ar'];
    itemsImage = json['items_image'];
    itemsCount = json['items_count'];
    itemsActive = json['items_active'];
    itemsquantityinbox = json['items_quantityinbox'];
    itemsPrice = json['items_price'];
    itemspricrofbox = json['items_pricrofbox'];
    itemsDescount = json['items_descount'];
    itemsDate = json['items_date'];
    itemsCat = json['items_cat'];
    categoriesId = json['categories_id'];
    categoriesName = json['categories_name'];
    categoriesNameAr = json['categories_name_ar'];
    categoriesImage = json['categories_image'];
    categoriesDatetime = json['categories_datetime'];
    favorite = json['favorite'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['items_id'] = itemsId;
    data['items_name'] = itemsName;
    data['items_name_ar'] = itemsNameAr;
    data['items_desc'] = itemsDesc;
    data['items_desc_ar'] = itemsDescAr;
    data['items_image'] = itemsImage;
    data['items_count'] = itemsCount;
    data['items_active'] = itemsActive;
    data['items_quantityinbox'] = itemsquantityinbox;
    data['items_price'] = itemsPrice;
    data['items_pricrofbox'] = itemspricrofbox;
    data['items_descount'] = itemsDescount;
    data['items_date'] = itemsDate;
    data['items_cat'] = itemsCat;
    data['categories_id'] = categoriesId;
    data['categories_name'] = categoriesName;
    data['categories_name_ar'] = categoriesNameAr;
    data['categories_image'] = categoriesImage;
    data['categories_datetime'] = categoriesDatetime;
    return data;
  }

  num? get itemPrice{
            if(itemsDescount!>0){
              return itemsPrice!- itemsPrice! * itemsDescount!/100;
            }else{
              return  itemsPrice!;
            }
  }

  num? get itemPriceBox{
        if(itemsDescount!>0){
          return itemspricrofbox! - itemspricrofbox! * itemsDescount!/100;
        }else{
          return  itemspricrofbox!;
        }
  }

  get amountofDiscount{
        if(itemsDescount! >0){
          return itemsDescount;
        }else{
          return 0 ;
        }
  }

  get pricewithoutDiscount{
        return  itemsPrice!;
  }

  get priceBoxwithoutDiscount{
        return  itemsPrice! * itemsquantityinbox!;
  }

}