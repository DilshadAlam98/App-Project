import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pervezbhai/Customer/Model/Model.dart';
import 'package:pervezbhai/Customer/Widget/Drawer.dart';
import 'package:provider/provider.dart';


class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Image.asset(
              "assets/images/Logo.png",
              height: 50,
            ),
            backgroundColor: Color(0xFFE23030),
          ),
          endDrawer: DrawerFUn(),
          body: Column(
            children: [
              Consumer<Model>(
             builder: (context, Model, child) {
               return  ListTile(title: Text(Model.name),
               );

             },)
            ],
          ),
          // bottomNavigationBar: NavBar(),
        ));
  }
}