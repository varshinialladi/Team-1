import 'package:flutter/material.dart';
import 'package:team1/models/products.dart';
import 'package:team1/provider/favorite_provider.dart';

class DetailAppbar extends StatelessWidget {
  final Product product;
  const DetailAppbar({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    return Row(
      children: [
        IconButton(
          style: IconButton.styleFrom(padding: EdgeInsets.all(15)),

          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        Spacer(),
        IconButton(
          style: IconButton.styleFrom(padding: EdgeInsets.all(15)),

          onPressed: () {},
          icon: Icon(Icons.share),
        ),
        SizedBox(width: 10),
        IconButton(
          style: IconButton.styleFrom(
            padding: EdgeInsets.all(15),
            backgroundColor: Colors.white,
          ),
          padding: EdgeInsets.all(15),

          onPressed: () {
            provider.toggleFavorite(product);
          },
          icon: Icon(
            provider.isExist(product) ? Icons.favorite : Icons.favorite_border,
            color: Colors.black,
            size: 25,
          ),
        ),
      ],
    );
  }
}
