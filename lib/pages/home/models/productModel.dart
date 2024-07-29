class ProductModel {
  int? id;
  Payload? payload;

  ProductModel({this.id, this.payload});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    payload =
        json['payload'] != null ? new Payload.fromJson(json['payload']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.payload != null) {
      data['payload'] = this.payload!.toJson();
    }
    return data;
  }
}

class Payload {
  int? id;
  String? name;
  String? mainCategory;
  String? subCategory;
  String? image;
  String? link;
  String? ratings;
  String? noOfRatings;
  String? discountPrice;
  String? actualPrice;

  Payload(
      {this.id,
      this.name,
      this.mainCategory,
      this.subCategory,
      this.image,
      this.link,
      this.ratings,
      this.noOfRatings,
      this.discountPrice,
      this.actualPrice});

  Payload.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    mainCategory = json['main_category'];
    subCategory = json['sub_category'];
    image = json['image'];
    link = json['link'];
    ratings = json['ratings'];
    noOfRatings = json['no_of_ratings'];
    discountPrice = json['discount_price'];
    actualPrice = json['actual_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['main_category'] = this.mainCategory;
    data['sub_category'] = this.subCategory;
    data['image'] = this.image;
    data['link'] = this.link;
    data['ratings'] = this.ratings;
    data['no_of_ratings'] = this.noOfRatings;
    data['discount_price'] = this.discountPrice;
    data['actual_price'] = this.actualPrice;
    return data;
  }
}
