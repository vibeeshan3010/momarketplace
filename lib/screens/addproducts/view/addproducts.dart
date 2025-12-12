import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../util/GlobalSnackBar.dart';
import '../../../util/strings.dart';
class AddProducts extends StatefulWidget {
  const AddProducts({super.key});

  @override
  State<AddProducts> createState() => _AddProductsState();
}


class _AddProductsState extends State<AddProducts> {
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
        Scaffold(
          body: Center(
            child: ElevatedButton(onPressed: null, child: Text(AppStrings.addproducts)),
          ),
        ),

        if (!isLoggedIn)
          Positioned.fill(
            child: AbsorbPointer(
              absorbing: true,
              child: Stack(
                children: [

                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(color: Colors.transparent),
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.5),
                  ),

                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                          Image.asset("assets/images/app_image_red.png",height: 100,),
                       SizedBox(height: 16),
                        Text(
                          AppStrings.logintocontinue,
                          style: Theme.of(context).textTheme.titleSmall,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
