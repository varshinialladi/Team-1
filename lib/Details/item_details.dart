import 'package:flutter/material.dart';
import 'package:team1/Details/description.dart';
import 'package:team1/models/products.dart';

class ItemDetails extends StatefulWidget {
  final Product product;
  const ItemDetails({super.key, required this.product});

  @override
  _ItemDetailsState createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  Color? selectedColor;

  @override
  void initState() {
    super.initState();
    if (widget.product.colors.isNotEmpty) {
      selectedColor = widget.product.colors.first;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.product.name,
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
        ),
        Text(widget.product.subname, style: TextStyle(fontSize: 15)),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.product.mrp,
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
            ),
            SizedBox(width: 15),
            Text("\$${widget.product.price}", style: TextStyle(fontSize: 25)),
          ],
        ),
        SizedBox(height: 15),
        Row(
          children: [
            Container(
              width: 60,
              height: 23,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 69, 215, 58),
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 1),
              child: Row(
                children: [
                  Icon(Icons.star, size: 17, color: Colors.white),
                  SizedBox(width: 5),
                  SingleChildScrollView(
                    child: Flexible(
                      child: Text(
                        widget.product.rate.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
            Text(widget.product.review, style: TextStyle(fontSize: 12)),
          ],
        ),
        SizedBox(height: 17),
        Text(
          "Colors",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        SizedBox(height: 12),
        Row(
          children:
              widget.product.colors.map((color) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedColor = color;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 8.0),
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color:
                            selectedColor == color
                                ? const Color.fromARGB(255, 235, 230, 230)
                                : Colors.transparent,
                        width: 2,
                      ),
                    ),
                  ),
                );
              }).toList(),
        ),
        SizedBox(height: 20),

        //for description
        Description(description: widget.product.description),
      ],
    );
  }
}
