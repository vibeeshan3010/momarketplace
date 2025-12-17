import 'package:flutter/material.dart';
import '../../../util/app_colors.dart';
import '../../../util/strings.dart';
import '../../../widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 50),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: TabBar(
                  labelColor: AppColors.red,
                  unselectedLabelColor: AppColors.red,
                  indicatorColor: Colors.red,
                  indicatorWeight: 3,
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                  tabs: [
                    Tab(text: AppStrings.login.toUpperCase()),
                    Tab(text: AppStrings.register.toUpperCase()),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(AppStrings.welcome,style: Theme.of(context).textTheme.headlineMedium,),
                        SizedBox(height: 10,),
                        Text(AppStrings.logintocontinue,style: Theme.of(context).textTheme.bodyMedium,),
                        SizedBox(height: 50,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/1.2,
                          child: CustomTextField(hintText: AppStrings.mobilenumber,),
                        ),
                        SizedBox(height: 20,),
                        ElevatedButton(
                          onPressed: () {

                          },
                          child: Text(AppStrings.login.toUpperCase()),
                        )
                      ],
                    ),
                  ),

                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(AppStrings.welcome,style: Theme.of(context).textTheme.titleLarge,),
                        SizedBox(height: 15,),
                        Text(AppStrings.createaccount,style: Theme.of(context).textTheme.bodyMedium,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/1.2,
                          child: CustomTextField(hintText:AppStrings.fullname ,),
                        ),
                        SizedBox(height: 25,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/1.2,
                          child: CustomTextField(hintText:AppStrings.displayname ,),
                        ),
                        SizedBox(height: 25,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/1.2,
                          child: CustomTextField(hintText:AppStrings.email ,),
                        ),
                        SizedBox(height: 25,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/1.2,
                          child:CustomTextField(hintText:AppStrings.mobile ,),
                        ),
                        SizedBox(height: 25,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/1.2,
                          child: CustomTextField(hintText:AppStrings.referalcode ,),
                        ),
                        SizedBox(height: 25,),
                        ElevatedButton(
                          onPressed: () {

                          },
                          child: Text(AppStrings.register.toUpperCase()),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


