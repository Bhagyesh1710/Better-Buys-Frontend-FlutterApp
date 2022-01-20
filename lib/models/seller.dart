class Seller{
  int? id;
  String? name;
  String? email;
  String? image;
  String? address;
  String? description;

  Seller.fromMap(Map<dynamic,dynamic> map){
    this.id = int.parse(map['id']);
    this.name = map['name'];
    this.email = map['email'];
    this.image = map['image'];
    this.address = map['address'];
    this.description = map['description'];
  }

}