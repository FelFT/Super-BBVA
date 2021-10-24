// To parse this JSON data, do
//
//     final rappy = rappyFromJson(jsonString);

// ignore_for_file: prefer_null_aware_operators

import 'dart:convert';

Rappy rappyFromJson(String str) => Rappy.fromJson(json.decode(str));

String rappyToJson(Rappy data) => json.encode(data.toJson());

class Rappy {
    Rappy({
        required this.credentials,
        required this.menu,
        required this.order,
    });

    List<Credential> credentials;
    List<Menu> menu;
    List<Order> order;

    factory Rappy.fromJson(Map<String, dynamic> json) => Rappy(
        credentials: List<Credential>.from(json["credentials"].map((x) => Credential.fromJson(x))),
        menu: List<Menu>.from(json["menu"].map((x) => Menu.fromJson(x))),
        order: List<Order>.from(json["order"].map((x) => Order.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "credentials": List<dynamic>.from(credentials.map((x) => x.toJson())),
        "menu": List<dynamic>.from(menu.map((x) => x.toJson())),
        "order": List<dynamic>.from(order.map((x) => x.toJson())),
    };
}

Credential credentialFromJson(String str) {    
  final jsonData = json.decode(str);    
  return Credential.fromJson(jsonData[0]);
}

String credentialToJson(Credential data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}


List<Credential> allCredentialFromJson(String str) {
  final jsonData = json.decode(str);
  return List<Credential>.from(jsonData.map((x) => Credential.fromJson(x)));
}

String allCredentialToJson(List<Credential> data) {
  final dyn = List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}

class Credential {
    Credential({
        required this.clientId,
        required this.clientSecret,
        required this.audience,
        required this.grantType,
    });

    int clientId;
    String clientSecret;
    String audience;
    String grantType;

    factory Credential.fromJson(Map<String, dynamic> json) => Credential(
        clientId: json["client_id"],
        clientSecret: json["client_secret"],
        audience: json["audience"],
        grantType: json["grant_type"],
    );

    Map<String, dynamic> toJson() => {
        "client_id": clientId,
        "client_secret": clientSecret,
        "audience": audience,
        "grant_type": grantType,
    };
}

class Menu {
    Menu({
        required this.storeId,
        required this.products,
    });

    String storeId;
    List<Product> products;

    factory Menu.fromJson(Map<String, dynamic> json) => Menu(
        storeId: json["store_id"],
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "store_id": storeId,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
    };
}
class Product {
    Product({
        required this.id,
        required this.name,
        required this.sku,
        required this.price,
    });

    String id;
    String name;
    String sku;
    int price;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        sku: json["sku"],
        price: json["price"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "sku": sku,
        "price": price,
    };
}

class Order {
    Order({
        required this.orderDetail,
    });

    OrderDetail orderDetail;

    factory Order.fromJson(Map<String, dynamic> json) => Order(
        orderDetail: OrderDetail.fromJson(json["order_detail"]),
    );

    Map<String, dynamic> toJson() => {
        "order_detail": orderDetail.toJson(),
    };
}

class OrderDetail {
    OrderDetail({
        required this.orderId,
        required this.cookingTime,
        required this.minCookingTime,
        required this.maxCookingTime,
        required this.createdAt,
        required this.deliveryMethod,
        required this.paymentMethod,
        required this.deliveryInformation,
    });

    String orderId;
    int cookingTime;
    int minCookingTime;
    int maxCookingTime;
    DateTime createdAt;
    String deliveryMethod;
    String paymentMethod;
    DeliveryInformation deliveryInformation;

    factory OrderDetail.fromJson(Map<String, dynamic> json) => OrderDetail(
        orderId: json["order_id"],
        cookingTime: json["cooking_time"],
        minCookingTime: json["min_cooking_time"],
        maxCookingTime: json["max_cooking_time"],
        createdAt: DateTime.parse(json["created_at"]),
        deliveryMethod: json["delivery_method"],
        paymentMethod: json["payment_method"],
        deliveryInformation: DeliveryInformation.fromJson(json["delivery_information"]),
    );

    Map<String, dynamic> toJson() => {
        "order_id": orderId,
        "cooking_time": cookingTime,
        "min_cooking_time": minCookingTime,
        "max_cooking_time": maxCookingTime,
        "created_at": createdAt.toIso8601String(),
        "delivery_method": deliveryMethod,
        "payment_method": paymentMethod,
        "delivery_information": deliveryInformation.toJson(),
    };
}

class DeliveryInformation {
    DeliveryInformation({
        required this.city,
        required this.completeAddress,
        required this.streetNumber,
        required this.neighborhood,
        required this.complement,
        required this.postalCode,
        required this.streetName,
    });

    String city;
    String completeAddress;
    String streetNumber;
    String neighborhood;
    String complement;
    String postalCode;
    String streetName;

    factory DeliveryInformation.fromJson(Map<String, dynamic> json) => DeliveryInformation(
        city: json["city"],
        completeAddress: json["complete_address"],
        streetNumber: json["street_number"],
        neighborhood: json["neighborhood"],
        complement: json["complement"],
        postalCode: json["postal_code"],
        streetName: json["street_name"],
    );

    Map<String, dynamic> toJson() => {
        "city": city,
        "complete_address": completeAddress,
        "street_number": streetNumber,
        "neighborhood": neighborhood,
        "complement": complement,
        "postal_code": postalCode,
        "street_name": streetName,
    };
}
