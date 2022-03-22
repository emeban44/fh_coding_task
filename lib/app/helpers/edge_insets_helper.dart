import 'package:flutter/material.dart';

const EdgeInsets blueBorderedBoxMargin = EdgeInsets.only(top: 12.5);

const EdgeInsets blueBorderedBoxPadding = EdgeInsets.only(
  top: 10,
  bottom: 0,
  left: 15,
  right: 15,
);

double getHomeColumnWidth(BuildContext context) {
  return MediaQuery.of(context).size.width * 0.15;
}
