class Product {
  int? id;
  String? name;
  String? barcode;
  String? description;
  String? thumbnail;
  double? quatity;
  
  Product(this.id, this.name, this.barcode, this.thumbnail, this.quatity,
      this.description);

  Product.empty() {
    this.id = 0;
    this.name = "";
    this.barcode = "";
    this.thumbnail = "";
    this.quatity = 0;
    this.description = "";
    this.thumbnail = "";
  }

  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'name': name,
      'barcode': barcode,
      'description': description,
      'thumbnail': thumbnail,
      'quatity': quatity,
    };
  }

  Product.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'] != null ? json['name'] : '',
        description = json['description'] != null ? json['description'] : '',
        thumbnail = json['thumbnail'] != null ? json['thumbnail'] : '',
        barcode = json['barcode'] != null ? json['barcode'] : '',
        quatity = json['quatity'] != null ? json['quatity'] : 0;
}
