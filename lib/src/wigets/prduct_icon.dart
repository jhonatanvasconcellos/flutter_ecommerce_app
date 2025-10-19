import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/model/category.dart';
import 'package:flutter_ecommerce_app/src/themes/light_color.dart';
import 'package:flutter_ecommerce_app/src/themes/theme.dart';
import 'package:flutter_ecommerce_app/src/wigets/title_text.dart';

class ProducIcon extends StatelessWidget {
  // final String imagePath;
  // final String text;
  // final bool isSelected;
  final  Category model;
  ProducIcon({Key? key ,required this.model})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      padding: AppTheme.hPadding,
      alignment: Alignment.center,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: model.isSelected ? LightColor.background : Colors.transparent,
        border: Border.all(
            color: model.isSelected ? LightColor.orange : LightColor.grey,
            width: model.isSelected ? 2 : 1),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: model.isSelected ?  Color(0xfffbf2ef) : Colors.white,
             blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(5,5)
              ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image.asset(model.image),
          Container(
            child: TitleText(
              text: model.name,
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}
