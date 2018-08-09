class Geo {
  final String lat;
  final String lng;

  Geo({this.lat, this.lng});

  factory Geo.fromJson(Map<String,dynamic> json){
    return Geo(lat: json['lat'], lng: json['lng']);
  }

}

class Adress{
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final Geo geo;

  Adress({this.street, this.suite, this.city, this.zipcode, this.geo});

  factory Adress.fromJson(Map<String, dynamic> json){
    
    return Adress(street: json['street'], suite: json['suite'], city: json['city'], zipcode: json['zipcode'], geo: Geo.fromJson(json['geo']) );
  }


}

class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  Company({this.name, this.catchPhrase, this.bs});

  factory Company.fromJson(Map<String, dynamic> json){
    return Company(name: json['name'], catchPhrase: json['catchPhrase'], bs: json['bs']);
  }

}


class User{

  final int id;
  final String name;
  final String email;
  final Adress address;
  final String phone;
  final String website;
  final Company company;


  User({this.id, this.name, this.email, this.address, this.phone, this.website, this.company});

  factory User.fromJson(Map<String,dynamic> json){

    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      address: Adress.fromJson(json['address']),
      phone: json['phone'],
      website: json['website'],
      company: Company.fromJson(json['company']));

  }


}

class UsersList{
  final List<User> users;

  UsersList({this.users});

  factory UsersList.fromJson(List<dynamic> parsedJson){
   List<User> users;
    users = parsedJson.map((item)=>User.fromJson(item)).toList();
    return UsersList(
      users: users
    );
  }

}