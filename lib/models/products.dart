import 'package:flutter/material.dart';

class Product {
  final String name;
  final String subname;
  final String description;
  final String mrp;
  final String image;
  final String review;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Product({
    required this.name,
    required this.subname,
    required this.mrp,
    required this.description,
    required this.image,
    required this.review,

    required this.price,
    required this.colors,
    required this.category,
    required this.rate,

    required this.quantity,
  });
}

final List<Product> products = [
  Product(
    name: 'Adidas kids',
    subname: "Grand Conurt Lace-Up Shoes",

    description:
        "Introducing the pinnacle of sneaker sophistication. Crafted with premium materials, these shoes effortlessly merge style and comfort. Elevate your footwear game with these exclusive sneakers, perfect for the modern gentleman seeking a touch of luxury. The Contrasting R highlights the sneaker in its entirety. \n -Dual Tone Color\n- Genuine Leather Upper\n- Genuine Leather Upper",

    mrp: "MRP",
    image: 'images/product1/product1-1.png',

    price: 1599,
    colors: [Colors.red, Colors.blue, Colors.black],
    review: "(320 Reviews)",
    category: "Electronic",
    rate: 4.8,
    quantity: 1,
  ),

  Product(
    name: 'Dot & Key',
    subname: "Watermelon Oil Free + Luminous Skin combo",
    description:
        'Watermelon Super Glow Face Wash: Sulphate-free formula powered by vitamin C to unclog pores, control excess oil & boost glow\n Watermelon Serum: Powered by 10% Glycolic Acid, it gently exfoliates & unclogs pores, controls excess oil & fades dark spots.\nWatermelon Super Glow Moisturizer: Lightweight & non-comedogenic, its infused with AHA gently exfoliate for oil-free, glowing skin.\nWatermelon Cooling Sunscreen: Daily wear, instantly cooling sunscreen with SPF 50 for smooth, luminous & protected skin every day.',
    mrp: "MRP",
    image: 'images/1_0381e9fb-cedc-4f57-8a00-377693f5e88a.jpg.webp',
    price: 200,
    colors: [const Color.fromARGB(255, 189, 195, 200), Colors.black],
    review: "(320 Reviews)",
    category: "Electronics",
    rate: 4.9,
    quantity: 1,
  ),
  Product(
    name: 'Headphone',
    subname:
        "soundcore by Anker,Space One,Active Noise Cancelling in Ear Headphones,2X Stronger Voice Reduction,40H ANC Playtime,App Control,Ldac Hi-Res Wireless Audio,Comfortable Fit,Clear Calls,Bluetooth 5.3",
    description:
        'Brand	:soundcore\nColour	:White\nForm Factor	:Over Ear\nImpedance	:16 Ohm\nNoise Control	:Active Noise Cancellatio',
    mrp: "MRP",
    image: 'images/shopping.jpeg',
    price: 8199,
    colors: [const Color.fromARGB(255, 200, 204, 208), Colors.black],
    review: "(570 Reviews)",
    category: "skincare",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    name: 'Air Jordan 1 Mid',
    subname: "Women's Shoes",
    description: 'This is a piece of clothing',
    mrp: "MRP",
    image: 'images/WMNS+AIR+JORDAN+1+MID.png',
    price: 10795,
    colors: [Colors.red, const Color.fromARGB(255, 82, 173, 248), Colors.black],
    review: "(1170 Reviews)",
    category: "shoes",
    rate: 4.9,
    quantity: 1,
  ),
  Product(
    name: 'Minimalist',
    subname:
        "Minimalist Daily Skincare Routine For Oily & Acne Prone Skin Csms Combo",
    description:
        'Minimalist Salicylic Acid + LHA 2% Facewash for oily, acne prone skin is a Lipohydroxy (LHA) & Salicylic Acid based cleanser that removes excess oil, dirt, sebum/oil, pollution and other contaminants from the surface of the skin simulatneously providing deep skin cleansing',
    image: 'images/sn0doSPIxE-1002777_Combo_1-1.jpg.avif',
    mrp: "MRP",
    price: 1481,
    colors: [Colors.black],
    review: "(320 Reviews)",
    category: "skincare",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    name: 'Laptop',
    subname:
        "HP Spectre x360 2024 2-in1 Laptop (Intel Core Ultra 7/ 32GB RAM/ 1TB SSD/ 14 inch (35.6 cm) Display/ Intel ARC Graphics/ Win11/ MSO) 14-EU0556TU",
    description:
        'Windows 11 Home\n14 inch (35.6 cm) 2.8K(2880 x 1800),OLED, 120Hz Display\nIntel® Core™ Ultra 7 155H Processor\n32 GB LPDDR5x-7467 MHz RAM (onboard)',
    mrp: "MRP",
    image: 'images/225491-image2_1.jpg.webp',
    price: 167990,
    colors: [Colors.black],
    review: "(1024 Reviews)",
    category: "Electronic",
    rate: 4,
    quantity: 1,
  ),
];
