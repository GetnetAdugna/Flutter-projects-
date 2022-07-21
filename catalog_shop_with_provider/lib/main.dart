import 'package:catalog_shop_with_provider/screens/login.dart';
import 'package:flutter/material.dart';
import './constants/constants.dart';

void main() {
  runApp(const MyCatalogApp());
}

class MyCatalogApp extends StatelessWidget {
  const MyCatalogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Catalog",
        theme: theme,
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.grey,
                title: Center(child: Text('ShopCatalog'))),
            //  The body of the login page will be written here
            body: LoginPage()));
  }
}
