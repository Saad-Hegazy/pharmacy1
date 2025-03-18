import 'itemsmodel.dart';

class CartModel {
  int? countitems;
  int? cartId;
  int? cartUsersid;
  int? cartItemsid;
  num? cartitemprice;
  int? itemsId;
  String? itemsName;
  String? itemsNameAr;
  String? itemsDesc;
  String? itemsDescAr;
  String? itemsImage;
  var itemsCount;
  int? itemsActive;
  int? itemsquantityinbox;
  int? cartitemisbox;
  int? cartitemcount;
  num? itemspricrofbox;
  num? itemsPrice;
  num? totalitemsPrice;
  num? itemsDescount;
  String? itemsDate;
  int? itemsCat;

  CartModel(
      {
        this.countitems,
        this.cartId,
        this.cartUsersid,
        this.cartItemsid,
        this.cartitemprice,
        this.itemsId,
        this.itemsName,
        this.itemsNameAr,
        this.itemsDesc,
        this.itemsDescAr,
        this.itemsImage,
        this.itemsCount,
        this.itemsActive,
        this.itemsquantityinbox,
        this.cartitemisbox,
        this.cartitemcount,
        this.itemspricrofbox,
        this.itemsPrice,
        this.totalitemsPrice,
        this.itemsDescount,
        this.itemsDate,
        this.itemsCat});

  CartModel.fromJson(Map<String, dynamic> json) {
    countitems = json['countitems'];
    cartId = json['cart_id'];
    cartUsersid = json['cart_usersid'];
    cartItemsid = json['cart_itemsid'];
    cartitemprice = json['cart_itemprice'];
    itemsId = json['items_id'];
    itemsName = json['items_name'];
    itemsNameAr = json['items_name_ar'];
    itemsDesc = json['items_desc'];
    itemsDescAr = json['items_desc_ar'];
    itemsImage = json['items_image'];
    itemsCount = json['items_count'];
    itemsActive = json['items_active'];
    itemsquantityinbox = json['items_quantityinbox'];
    cartitemisbox = json['cart_itemisbox'];
    cartitemcount = json['cart_itemcount'];
    itemsPrice = json['items_price'];
    totalitemsPrice = json['itemsprice'];
    itemspricrofbox = json['items_pricrofbox'];
    itemsDescount = json['items_descount'];
    itemsDate = json['items_date'];
    itemsCat = json['items_cat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['countitems'] = countitems;
    data['cart_id'] = cartId;
    data['cart_usersid'] = cartUsersid;
    data['cart_itemsid'] = cartItemsid;
    data['cart_itemprice'] =cartitemprice;
    data['items_id'] = itemsId;
    data['items_name'] = itemsName;
    data['items_name_ar'] = itemsNameAr;
    data['items_desc'] = itemsDesc;
    data['items_desc_ar'] = itemsDescAr;
    data['items_image'] = itemsImage;
    data['items_count'] = itemsCount;
    data['items_active'] = itemsActive;
    data['items_quantityinbox'] = itemsquantityinbox;
    data['cart_itemisbox'] = cartitemisbox;
    data['cart_itemcount'] = cartitemcount;
    data['items_price'] = itemsPrice;
    data['itemsprice']=totalitemsPrice;
    data['items_pricrofbox'] = itemspricrofbox;
    data['items_descount'] = itemsDescount;
    data['items_date'] = itemsDate;
    data['items_cat'] = itemsCat;
    return data;
  }


  ItemsModel toItemsModel() {
    return ItemsModel(
      itemsId: itemsId,
      itemsName: itemsName,
      itemsNameAr: itemsNameAr,
      itemsDesc: itemsDesc,
      itemsDescAr: itemsDescAr,
      itemsImage: itemsImage,
      itemsCount: itemsCount,
      itemsActive: itemsActive,
      itemsquantityinbox: itemsquantityinbox,
      itemsPrice: itemsPrice,
      itemspricrofbox: itemspricrofbox,
      itemsDescount: itemsDescount,
      itemsDate: itemsDate,
      itemsCat: itemsCat,
    );
  }
}