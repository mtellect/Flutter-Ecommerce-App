import 'package:flutter/material.dart';

class Store {
  String itemName;
  double itemPrice;
  String itemImage;
  double itemRating;

  Store.items({this.itemName, this.itemPrice, this.itemImage, this.itemRating});
}

List<Store> storeItems = [
  Store.items(
      itemName: "Pink Can",
      itemPrice: 2500.00,
      itemImage: "https://goo.gl/X6mMdH",
      itemRating: 0.0),
  Store.items(
      itemName: "Black Strip White",
      itemPrice: 2499.00,
      itemImage: "https://goo.gl/ANKP4k",
      itemRating: 0.0),
  Store.items(
      itemName: "Pink Can",
      itemPrice: 2500.00,
      itemImage: "https://goo.gl/X6mMdH",
      itemRating: 0.0),
  Store.items(
      itemName: "Black Strip White",
      itemPrice: 2499.00,
      itemImage: "https://goo.gl/77AUhb",
      itemRating: 0.0),
  Store.items(
      itemName: "Pink Can",
      itemPrice: 2500.00,
      itemImage: "https://goo.gl/X6mMdH",
      itemRating: 0.0),
  Store.items(
      itemName: "Black Strip White",
      itemPrice: 2499.00,
      itemImage: "https://goo.gl/RXqqSK",
      itemRating: 0.0),
  Store.items(
      itemName: "Pink Can",
      itemPrice: 2500.00,
      itemImage: "https://goo.gl/8f9WDy",
      itemRating: 0.0),
  Store.items(
      itemName: "Black Strip White",
      itemPrice: 2499.00,
      itemImage: "https://goo.gl/f1SRdM",
      itemRating: 0.0),
  Store.items(
      itemName: "Pink Can",
      itemPrice: 2500.00,
      itemImage: "https://goo.gl/X6mMdH",
      itemRating: 0.0),
  Store.items(
      itemName: "Black Strip White",
      itemPrice: 2499.00,
      itemImage: "https://goo.gl/X6mMdH",
      itemRating: 0.0),
];
