// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'counter.dart';

// ignore: must_be_immutable
class QuickBuyContainerConstractor extends StatefulWidget {
  final String counterId;
  final String iconName;
  final double iconSize;
  double borderradius = 0;
  final String title;
  final double price;
  QuickBuyContainerConstractor(
      {Key? key,
      required this.counterId,
      Key? IconName,
      required this.iconName,
      Key? IconSize,
      required this.iconSize,
      Key? Borderradius,
      required this.borderradius,
      Key? Title,
      required this.title,
      Key? Price,
      required this.price})
      : super(key: key);
  @override
  QuickBuyContainer createState() => QuickBuyContainer();
}

class QuickBuyContainer extends State<QuickBuyContainerConstractor> {
  @override
  Widget build(BuildContext context) {
    return (Container(
      height: widget.iconSize,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 101, 168, 255),
          borderRadius: BorderRadius.circular(widget.borderradius)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: widget.iconSize + 20,
            margin: EdgeInsets.zero,
            child: Image.asset(widget.iconName),
          ),
          SizedBox(
            height: widget.iconSize + 20,
            width: widget.iconSize + 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text('${widget.price} IQD',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Counter(counterShow: widget.counterId),
                  )
                ])
              ],
            ),
          )
        ],
      ),
    ));
  }
}
