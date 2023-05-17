import 'package:flutter/material.dart';
import 'package:ngo_link/Home_Page/scaffold_body.dart';
import 'package:ngo_link/Home_Page/side_bar_menu.dart';
import 'package:ngo_link/Home_Page/sliver_trial.dart';
import 'package:ngo_link/donate_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      body: SliverTrial(),//ScaffoldBody(),
      drawer: SideBarMenu(),
    );
  }
}



