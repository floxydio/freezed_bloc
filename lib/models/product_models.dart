class ProductModel {
  int? status;
  List<ProductData>? data;
  String? message;

  ProductModel({this.status, this.data, this.message});

  ProductModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <ProductData>[];
      json['data'].forEach((v) {
        data!.add(ProductData.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = message;
    return data;
  }
}

class ProductData {
  int? productId;
  String? nama;
  String? category;
  String? quantity;
  int? price;
  String? productImage;
  int? sellerId;
  String? createdAt;

  ProductData(
      {this.productId,
        this.nama,
        this.category,
        this.quantity,
        this.price,
        this.productImage,
        this.sellerId,
        this.createdAt});

  ProductData.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    nama = json['nama'];
    category = json['category'];
    quantity = json['quantity'];
    price = json['price'];
    productImage = json['product_image'];
    sellerId = json['seller_id'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['product_id'] = productId;
    data['nama'] = nama;
    data['category'] = category;
    data['quantity'] = quantity;
    data['price'] = price;
    data['product_image'] = productImage;
    data['seller_id'] = sellerId;
    data['createdAt'] = createdAt;
    return data;
  }
}
