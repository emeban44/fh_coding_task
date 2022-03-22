import 'package:flutter/material.dart';

const EdgeInsets blueBorderedBoxMargin = EdgeInsets.only(top: 12.5);

const EdgeInsets blueBorderedBoxPadding = EdgeInsets.symmetric(
  vertical: 10,
  horizontal: 15,
);

double getHomeColumnWidth(BuildContext context) {
  return MediaQuery.of(context).size.width * 0.15;
}
