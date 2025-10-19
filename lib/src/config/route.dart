import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/pages/mainPage.dart';

class Routes{
  static Map<String,WidgetBuilder> getRoute(){
    return  <String, WidgetBuilder>{
          '/': (_) => MainPage(key: Key('main_page'), title: 'E-Commerce'),
          // '/detail': (_) => ProductDetailPage()
        };
  }
}