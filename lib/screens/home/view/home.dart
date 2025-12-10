import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:momarketplace/util/appcolors.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.transparent,
          leading:Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Container(decoration:BoxDecoration(
                    color: AppColors.white,
                    shape: BoxShape.circle
                  ),
                    child: Image.asset("assets/icons/menu-alt-2.png",height: 75,width: 50,),
                  ),
          ),title: Text("Home"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Home"),
          )
        ],
      ),
    );
  }
}
