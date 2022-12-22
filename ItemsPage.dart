// ignore_for_file: file_names, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'counter.dart';
import './menu.dart';
import 'MyBasket.dart';
import 'AppBar.dart';
import './mainPage.dart';

class ItemsPage extends StatefulWidget {
  final String imageName;
  final double imageSize;
  final String description;
  final String counterID;
  final String title;
  const ItemsPage(
      {Key? key,
      required this.imageName,
      Key? ImageSize,
      required this.imageSize,
      Key? Descr,
      required this.description,
      Key? count,
      required this.counterID,
      Key? tit,
      required this.title})
      : super(key: key);

  @override
  ItemsPageConstractor createState() => ItemsPageConstractor();
}

class ItemsPageConstractor extends State<ItemsPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return (new Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),

      // ignore: unnecessary_new
      body: Container(
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CostAppBar(
                      title: widget.title,
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: Image.asset(
                          widget.imageName,
                        )),
                    Container(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 194, 200, 211),
                            borderRadius: BorderRadius.circular(0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 15, top: 0),
                                child: Counter(
                                  counterShow: widget.counterID,
                                )),
                            Container(
                                margin: const EdgeInsets.only(right: 15, top: 0),
                                child: const Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                  size: 50,
                                )),
                          ],
                        )),
                    Container(
                      margin: const EdgeInsets.only(top: 30, left: 15),
                      child: Text(
                        widget.description,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                    )
                  ]))),

      bottomNavigationBar: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  //1st content
                  margin: const EdgeInsets.only(right: 0),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const MyHomePage(title: 'Hi There,')));
                      },
                      child: const Icon(
                        Icons.settings,
                        size: 35,
                      ))),
              Container(
                  //2ed content
                  margin: const EdgeInsets.only(left: 45),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const MyHomePage(title: 'Hi There,')));
                      },
                      child: const Icon(
                        Icons.home,
                        size: 35,
                      ))),
              Container(
                  //3rd content
                  margin: const EdgeInsets.only(left: 45),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const MyBasketPage(title: 'Hi There,')));
                      },
                      child: const Icon(
                        Icons.shopping_basket,
                        size: 35,
                      ))),
            ], //end of bot app
          )), //end of bot app
      drawer: const Menu(),
    ));
  }
}
