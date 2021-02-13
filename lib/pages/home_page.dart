import 'dart:ffi';

import 'package:ShoeShop2/constant/product_data.dart';
import 'package:ShoeShop2/pages/product_detail_page.dart';
import 'package:ShoeShop2/theme/colors.dart';
import 'package:ShoeShop2/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 50, right: 25, left: 25, bottom: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Shoes",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Text(
                    "Sort by",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Icon(LineAwesomeIcons.angle_down),
                  )
                ],
              )
            ],
          ),
        ),
        Column(
          children: List.generate(products.length, (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ProductDetailPage(
                              id: products[index]['id'].toString(),
                              name: products[index]['name'],
                              price: products[index]['price'],
                              img: products[index]['img'],
                              mulImg: products[index]['mul_img'],
                              sizes: products[index]['sizes'],
                            )));
              },
              child: Padding(
                  padding: EdgeInsets.all(6),
                  child: Container(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: grey,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 1,
                                    color: black.withOpacity(0.1),
                                    blurRadius: 2)
                              ]),
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                  width: 200,
                                  height: 180,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/images/" +
                                              products[index]['img']),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                products[0]['name'],
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "\$" + products[index]['price'],
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            child: IconButton(
                                icon: SvgPicture.asset(
                                    "assets/images/heart_icon.svg"),
                                onPressed: null)),
                      ],
                    ),
                  )),
            );
          }),
        )
      ],
    );
  }
}
