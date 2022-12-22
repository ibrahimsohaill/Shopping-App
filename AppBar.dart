// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CostAppBar extends StatefulWidget {
  final String title;
  const CostAppBar({Key? key, required this.title}) : super(key: key);

  @override
  AppBarConstractor createState() => AppBarConstractor();
}

class AppBarConstractor extends State<CostAppBar> {
  @override
  Widget build(BuildContext context) {
    return (Container(
        height: 200,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 58, 133, 233),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(70.0))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900),
                  )),
              Container(
                margin: const EdgeInsets.only(top: 0.0, right: 0.0),
                child: TextButton(
                  child: const Icon(
                    Icons.menu_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              )
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              FittedBox(
                  fit: BoxFit.cover,
                  child: Container(
                    width: 300,
                    height: 60,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(140),
                            bottomRight: Radius.circular(140),
                            topLeft: Radius.circular(70),
                            // ignore: unnecessary_const
                            topRight: const Radius.circular(70))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 0),
                          child: TextButton(
                            onPressed: () {},
                            child: const Icon(
                              Icons.search,
                              size: 30,
                            ),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.only(right: 15),
                            width: 200,
                            height: 60,
                            child: const TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: "Search",
                              ),
                              keyboardType: TextInputType.multiline,
                              textInputAction: TextInputAction.search,
                              textAlignVertical: TextAlignVertical(y: 1.0),
                            ))
                      ],
                    ),
                  ))
            ])
          ],
        )));
  }
}
