import 'package:ShoeShop2/theme/colors.dart';
import 'package:ShoeShop2/widgets/product_slider.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  final String id;
  final String name;
  final String img;
  final String price;
  final List mulImg;
  final List sizes;



  ProductDetailPage({this.id, this.name, this.img, this.price, this.mulImg, this.sizes});

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {

  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),

    );
  }

  Widget getBody() {
    return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color:  grey,
                borderRadius:  BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                    color: black.withOpacity(0.1),
                    spreadRadius: 1
                  )
                ]
              ),
              child: Stack(
                children: <Widget>[
                  ProductSlider(items: widget.mulImg,)
                ],
              ),
            )
          ],
        ),
    );

  }
}
