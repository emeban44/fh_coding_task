import 'package:fh_home_coding_task/app/view/home/page/home_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: HomeBody(),
      ),
    );
  }
}
