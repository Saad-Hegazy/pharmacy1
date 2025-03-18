class ImageSliderModel {
  int? ImageSliderId ;
  String? ImageSliderName;

  ImageSliderModel(
      {
        this.ImageSliderId,
        this.ImageSliderName,
      });

  ImageSliderModel.fromJson(Map<String, dynamic> json) {
    ImageSliderId = json['ImageSlider_id '];
    ImageSliderName = json['ImageSlider_name'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ImageSlider_id'] = ImageSliderId;
    data['ImageSlider_name'] = ImageSliderName;
    return data;
  }
}