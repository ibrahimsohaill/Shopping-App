// ignore_for_file: file_names, avoid_unnecessary_containers, unnecessary_new

import 'dart:async';
import './DivWithoutButton.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:shopping_app/QuickBuyContainer.dart';

import './mainPage.dart';
import './menu.dart';
import 'Items.dart';
import './AppBar.dart';

bool noti = false;

class MyBasketPage extends StatefulWidget {
  final String title;

  const MyBasketPage({Key? key, required this.title}) : super(key: key);

  @override
  MyBasketPageConstractor createState() => MyBasketPageConstractor();
}

class MyBasketPageConstractor extends State<MyBasketPage> {
  bool? checksBox = false;
  double sh = 0;
  String cap = '';
  double dis = 0;
  double deliveryCost = 0.0;
  // ignore: non_constant_identifier_names
  double Total = 0.0;
  @override
  initState() {
    Timer.periodic(const Duration(milliseconds: 1500), (timer) {
      setState(() {
        totalWeight = totalWeight;
        totalPrice = totalPrice;
        deliveryCost = totalWeight * 5.0;
        Total = totalPrice + deliveryCost;
        dis = dis;
      });

      if (totalPrice > 0.0) {
        sh = totalPrice;
      } else {
        Timer.periodic(const Duration(seconds: 5), (timer) {
          setState(() {
            sh = totalPrice;
          });
        });
      }
    });

    super.initState();
  }

  final discController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: (new Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),

        body: new Container(
            child: SingleChildScrollView(
          child: Column(children: [
            const CostAppBar(
              title: 'My Basket',
            ),
            sh > 0
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        divWithoutButtonConstractor(
                            title: 'Purchases',
                            Fontsize: 30,
                            iconName: Icons.shopping_bag,
                            iconColor: const Color.fromARGB(255, 255, 255, 255)),
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Shower(),
                                ])),
                        Container(
                            margin: const EdgeInsets.only(top: 30),
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 58, 133, 233)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(left: 15),
                                        width: 205,
                                        height: 58,
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 255, 255, 255),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                                width: 205,
                                                height: 58,
                                                child: TextField(
                                                  controller: discController,
                                                  decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      labelText:
                                                          "Discount coupons",
                                                      hintText: 'Enter it 🦍',
                                                      prefixIcon:
                                                          const Icon(Icons.discount),
                                                      suffixIcon: discController
                                                              .text.isEmpty
                                                          ? Container(
                                                              width: 0,
                                                            )
                                                          : IconButton(
                                                              onPressed: () =>
                                                                  discController
                                                                      .clear(),
                                                              icon: const Icon(
                                                                Icons.close,
                                                                size: 20,
                                                              )),
                                                      labelStyle: const TextStyle(
                                                        fontSize: 13,
                                                        color: Color.fromARGB(
                                                            255, 58, 133, 233),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      hintStyle: const TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black)),
                                                  keyboardType:
                                                      TextInputType.multiline,
                                                  textInputAction:
                                                      TextInputAction.go,
                                                  textAlignVertical:
                                                      const TextAlignVertical(y: 1.0),
                                                  onChanged: ((value) {
                                                    cap = value
                                                        .toUpperCase()
                                                        .toString();
                                                  }),
                                                )),
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            discountMap.forEach((key, val) => {
                                                  if (cap == key)
                                                    {
                                                      if (discountAvailabilityMap[
                                                              cap] >
                                                          0)
                                                        {
                                                          dis = Total *
                                                              (val / 100)
                                                        }
                                                    }
                                                });
                                          },
                                          icon: const Icon(
                                            Icons.discount,
                                            color: Colors.white,
                                          ))
                                    ]),
                              ],
                            )),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 30, left: 15),
                              child: const Text(
                                'The total price of all itsems: ',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 30),
                              child: Text(
                                '$totalPrice IQD',
                                style: const TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 15, left: 15),
                              child: const Text(
                                'The total weight of all itsems: ',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 15),
                              child: Text(
                                '$totalWeight g',
                                style: const TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 15, left: 15),
                              child: const Text(
                                'The total of dilevery cost: ',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 0, 0)),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 15),
                              child: Text(
                                '$deliveryCost IQD',
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 251, 0, 0)),
                              ),
                            )
                          ],
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 15, left: 15),
                              child: const Text(
                                'Discount:',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 31, 254, 98)),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 15),
                              child: Text(
                                '$dis IQD',
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 31, 254, 98)),
                              ),
                            )
                          ],
                        ),
                        divWithoutButtonConstractor(
                            title: 'Total: ${Total - dis} IQD',
                            Fontsize: 22,
                            iconName: Icons.calculate,
                            iconColor: const Color.fromARGB(255, 255, 255, 255)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(
                                      left: 15.0, top: 0, bottom: 30),
                                  child: const Text(
                                    'By checking this checkbox you are accepting all\nstore conditions.',
                                    style: TextStyle(color: Colors.white),
                                  )),
                              Container(
                                  margin:
                                      const EdgeInsets.only(top: 0, right: 8),
                                  padding:
                                      const EdgeInsets.fromLTRB(1, 1, 1, 1),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                          width: 3,
                                          color:
                                              Color.fromARGB(255, 8, 218, 255)),
                                      left: BorderSide(
                                          width: 3,
                                          color:
                                              Color.fromARGB(255, 8, 218, 255)),
                                      right: BorderSide(
                                          width: 3,
                                          color:
                                              Color.fromARGB(255, 8, 218, 255)),
                                      bottom: BorderSide(
                                          width: 3,
                                          color:
                                              Color.fromARGB(255, 8, 218, 255)),
                                    ),
                                  ),
                                  width: 20,
                                  height: 20,
                                  child: Checkbox(
                                      checkColor: Colors.white,
                                      activeColor: const Color.fromARGB(
                                          255, 8, 218, 255),
                                      value: checksBox,
                                      onChanged: (value) {
                                        setState(() {
                                          checksBox = value;
                                        });
                                      })),
                            ]),
                        Container(
                            margin:
                                const EdgeInsets.only(top: 20.0, bottom: 15.0),
                            child: ElevatedButton(
                                onPressed: checksBox == false
                                    ? null
                                    : () => setState(() {
                                          for (int pind = 0;
                                              pind < 50;
                                              pind++) {
                                            if (itemsMap['item$pind'] > 0) {
                                              itemsAvailability['item$pind'] -=
                                                  itemsMap['item$pind'];
                                              itemsMap['item$pind'] = 0;
                                            }
                                          }
                                          totalPrice = 0.0;
                                          totalWeight = 0.0;
                                        }),
                                child: const Text('purchase')))
                      ])
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Your basket is empty',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: const Text(
                          'You can check the items shown below:',
                          style: TextStyle(
                              color: Color.fromARGB(255, 31, 254, 98),
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ],
                  )
          ]),
        )),

        bottomNavigationBar: Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    //1st content
                    margin: const EdgeInsets.only(left: 30.0),
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
                    margin: const EdgeInsets.only(left: 45, right: 30.0),
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
      )),
    );
  }
}

class Shower extends StatefulWidget {
  const Shower({Key? key}) : super(key: key);

  @override
  ShowerConstractor createState() => ShowerConstractor();
}

class ShowerConstractor extends State<Shower> {
  @override
  void initState() {
    Timer.periodic(const Duration(milliseconds: 1500), (timer) {
      for (int i = 0; i < itemsMap.length; i++) {
        if (itemsMap['item$i'] == 0) {
          Timer.periodic(const Duration(seconds: 5), (timer) {
            setState(() {
              itemschker['item$i'] = itemsMap['item$i'];
            });
          });
        } else {
          setState(() {
            itemschker['item$i'] = itemsMap['item$i'];
          });
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return (new Container(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int ind = 0; ind < itemschker.length; ind++)
                  itemschker['item$ind'] > 0
                      ? Container(
                          margin: const EdgeInsets.only(
                              right: 15, left: 15, top: 0),
                          child: QuickBuyContainerConstractor(
                            borderradius: 25,
                            counterId: 'item$ind',
                            title: 'Item $ind',
                            iconName: 'star.jpg',
                            iconSize: 150,
                            price: 5000,
                          ))
                      : const Text('')
              ],
            ))));
  }
}
