import 'package:flutter/material.dart';

class Product {
  final int id, available;
  final String title, description, image, city, price, mitra;
  final double rating;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.rating,
    required this.city,
    required this.available,
     required this.mitra,
  });
}

List<Product> productlist = [
  Product(
    id: 1,
    image: 'assets/images_product/gula jawa.png',
    title: "Gula Jawa",
    price: "Rp.15.000",
    description: description,
    rating: 4.8,
    city: "Kab.Banyumas",
    available: 50,
    mitra: "Desa Ajibarang"
  ),
  Product(
    id: 2,
    image: 'assets/images_product/kandang.png',
    title: "Kandang",
    price: "Rp 75.000",
    description: description,
    rating: 4.8,
    city: "Kab.Banyumas",
    available: 50,
    mitra: "Desa Melung"
  ),
  Product(
    id: 3,
    image: 'assets/images_product/kopi.png',
    title: "Kopi",
    price: "Rp. 25.000",
    description: description,
    rating: 4.8,
    city: "Kab.Purbalingga",
    available: 50,
    mitra: "Desa Bukateja"
  ),
  Product(
    id: 4,
    image: 'assets/images_product/pie.png',
    title: "Pie Susu",
    price: "Rp. 20.000",
    description: description,
    rating: 4.8,
    city: "Kab.Banyumas",
    available: 50,
    mitra: "Desa Bukateja"
  ),
  Product(
    id: 5,
    image: 'assets/images_product/gula jawa.png',
    title: "Gula Jawa",
    price: "Rp. 15.000",
    description: description,
    rating: 4.8,
    city: "Kab.Banyumas",
    available: 50,
    mitra: "Desa Bukateja"
  ),
  Product(
    id: 6,
    image: 'assets/images_product/kandang.png',
    title: "Kandang",
    price: "Rp 75.000",
    description: description,
    rating: 4.8,
    city: "Kab.Banyumas",
    available: 50,
    mitra: "Desa Bukateja"
  ),
];

const String description =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy";
