import 'package:flutter/material.dart';

import 'app_colors.dart';

class GlobalSnackBar {
  static show(
      BuildContext context,
      String message,
      ) {
    final snackBar = SnackBar(
      elevation: 1.0,
      backgroundColor: AppColors.red,
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.up,
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height - 260,
        left: 10,
        right: 10,
      ),

      content: SizedBox(
        height: 30,
        child: Center(
          child: Text(
            message,
            style: Theme.of(context).textTheme.displayLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
