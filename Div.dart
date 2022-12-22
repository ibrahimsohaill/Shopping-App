import 'package:flutter/material.dart';

Widget divConstractor(
    {required String title,
    // ignore: non_constant_identifier_names
    required double Fontsize,
    required IconData iconName,
    required Color iconColor}) {
  return (Container(
      //title of the first row
      //Catalog
      margin: const EdgeInsets.only(top: 30.0, bottom: 30.0),
      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
      decoration: const BoxDecoration(color: Color.fromARGB(255, 58, 133, 233)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              margin: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: Fontsize,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Lato',
                      color: iconColor,
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 8.0),
                      child: Icon(
                        iconName,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Container(
                height: 40,
                margin: const EdgeInsets.only(right: 15.0),
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(60)),
                child: TextButton(
                  child: const Text(
                    'All',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Lato',
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                )),
          ]),
        ],
      )));
}
