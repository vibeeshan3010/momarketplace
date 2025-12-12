import 'package:flutter/material.dart';
import 'package:momarketplace/util/GlobalSnackBar.dart';
import 'package:momarketplace/util/appcolors.dart';
import '../../../util/strings.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<ChatScreen> {
  bool isLoggedIn = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!isLoggedIn) {
        GlobalSnackBar.show(context, AppStrings.logintocontinue);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (!isLoggedIn)
          Positioned.fill(
            child: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Center(

    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/app_image_red.png",height: 100,),
                  Text(AppStrings.logintocontinue,style: Theme.of(context).textTheme.bodyMedium,),
                ],
              ),),
          ),
          )],
    );
  }
}
