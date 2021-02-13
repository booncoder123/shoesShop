import 'package:ShoeShop2/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget getAppBar(){
  return AppBar(
    backgroundColor: white,
    elevation: 0,
    title: Row(
      mainAxisAlignment:  MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
            icon: SvgPicture.asset("assets/images/burger_icon.svg"),
            onPressed: (){

            }),
        Row(
          children: [
            IconButton(
                icon: SvgPicture.asset("assets/images/search_icon.svg"),
                onPressed: (){

                }),
            IconButton(
                icon: SvgPicture.asset("assets/images/filter_icon.svg"),
                onPressed: (){

                }),
            IconButton(icon: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: black
              ),
              child: Center(
                child: Text("3", style: TextStyle(
                    fontSize: 15
                ),),
              ),
            ), onPressed: (){

            })
          ],
        )
      ],
    ),
  );
}