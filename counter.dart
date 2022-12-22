import 'package:flutter/material.dart';
import 'Items.dart';

// ignore: must_be_immutable
class Counter extends StatefulWidget {
  String counterShow;

  Counter({
    Key? key,
    required this.counterShow,
  }) : super(key: key);
  @override
  CounterConstractor createState() => CounterConstractor();
}

class CounterConstractor extends State<Counter> {
  int max = 9;
  int updeter() {
    setState(() {
      ava();
    });
    return itemsAvailability[widget.counterShow];
  }

  double totalPriceUpdeter() {
    setState(() {
      totalPrice = 0;
      for (int tot = 0; tot < 50; tot++) {
        totalPrice += itemsMap['item$tot'] * itemsprice['item$tot'] / 1.0;
      }
    });
    return totalPrice;
  }

  delv() {
    setState(() {
      weightUpdeter();
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return (Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          updeter() <= 0
              ? Container(
                  margin: const EdgeInsets.only(top: 0.0),
                  width: 190,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'out of stock',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        )
                      ]))
              : itemsMap[widget.counterShow] == 0
                  ? Container(
                      margin: const EdgeInsets.only(top: 0.0),
                      width: 50,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 222, 100),
                          borderRadius: BorderRadius.circular(18.0)),
                      child: TextButton(
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onPressed: () => setState(() {
                          if (itemsAvailability[widget.counterShow] > 0) {
                            if (itemsMap[widget.counterShow] <= max &&
                                itemsMap[widget.counterShow] <
                                    itemsAvailability[widget.counterShow]) {
                              itemsMap[widget.counterShow]++;
                            } else {
                              itemsMap[widget.counterShow] = 0;
                            }
                          }
                          totalPriceUpdeter();
                          weightUpdeter();
                        }),
                      ),
                    )
                  // ignore: unnecessary_new
                  : new Container(
                      width: 190,
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 222, 100),
                          borderRadius: BorderRadius.circular(18.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // ignore: avoid_unnecessary_containers
                          Container(
                            width: 40,
                            margin: const EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28)),
                            child: TextButton(
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              onPressed: () => setState(() {
                                if (itemsAvailability[widget.counterShow] > 0) {
                                  if (itemsMap[widget.counterShow] <= max &&
                                      itemsMap[widget.counterShow] <
                                          itemsAvailability[
                                              widget.counterShow]) {
                                    itemsMap[widget.counterShow]++;
                                  } else {
                                    itemsMap[widget.counterShow] = 0;
                                  }
                                }
                                totalPriceUpdeter();
                                weightUpdeter();
                              }),
                            ),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 70,
                                    margin: const EdgeInsets.only(left: 10),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        color: Colors.amber),
                                    padding: const EdgeInsets.fromLTRB(
                                        9.5, 5.0, 9.5, 5.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'QTY: ${itemsMap[widget.counterShow]}',
                                          // ignore: prefer_const_constructors
                                          style: TextStyle(
                                              color:
                                                  const Color.fromARGB(255, 0, 0, 0),
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    )),
                              ]),
                          // ignore: avoid_unnecessary_containers
                          Container(
                            width: 40,
                            margin: const EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28)),
                            child: TextButton(
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                              onPressed: () => setState(() {
                                if (itemsAvailability[widget.counterShow] > 0) {
                                  if (itemsMap[widget.counterShow] <= max + 1 &&
                                      itemsMap[widget.counterShow] <=
                                          itemsAvailability[
                                              widget.counterShow]) {
                                    itemsMap[widget.counterShow]--;
                                  } else {
                                    itemsMap[widget.counterShow] = 0;
                                  }
                                }
                                totalPriceUpdeter();
                                weightUpdeter();
                              }),
                            ),
                          ),
                        ],
                      ),
                    )
        ],
      ),
    ));
  }
}
