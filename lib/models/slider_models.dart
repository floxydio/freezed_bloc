class SliderModel {
  int? status;
  DataSlider? data;
  String? message;

  SliderModel({this.status, this.data, this.message});

  SliderModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? DataSlider.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    return data;
  }
}

class DataSlider {
  int? sliderId;
  String? sliderImage;
  int? active;
  String? createdAt;

  DataSlider({this.sliderId, this.sliderImage, this.active, this.createdAt});

  DataSlider.fromJson(Map<String, dynamic> json) {
    sliderId = json['slider_id'];
    sliderImage = json['slider_image'];
    active = json['active'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['slider_id'] = sliderId;
    data['slider_image'] = sliderImage;
    data['active'] = active;
    data['created_at'] = createdAt;
    return data;
  }
}
