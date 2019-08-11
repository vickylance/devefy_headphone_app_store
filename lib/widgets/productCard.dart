import 'package:devefy_headphone_app_store/style.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imgUrl;
  final String name;
  final int color;
  ProductCard({this.imgUrl, this.name, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 180,
      margin: EdgeInsets.only(left: 12),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 200,
              height: 170,
              margin: EdgeInsets.only(right: 10, left: 10, bottom: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    offset: Offset(0, 10),
                    blurRadius: 12,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: -20,
            top: -10,
            child: Image.asset(
              imgUrl,
              fit: BoxFit.fitWidth,
              width: 170,
              height: 170,
            ),
          ),
          Positioned(
            left: 30,
            bottom: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: productTitleStyle,
                ),
                Text(
                  "colors $color",
                  style: productSubTitleStyle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
