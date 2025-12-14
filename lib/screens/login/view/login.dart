import 'package:flutter/material.dart';
import '../../../util/app_colors.dart';
import '../../../util/strings.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // number of tabs
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 50), // optional spacing from top
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: TabBar(
                  labelColor: AppColors.red,
                  unselectedLabelColor: AppColors.red,
                  indicatorColor: Colors.red, // <-- set your line color here
                  indicatorWeight: 3, // optional: thickness of the line
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
                  // Login tab content
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
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText:AppStrings.mobilenumber, // your hint
                              border: UnderlineInputBorder(
                                // You can customize the look of the border here
                                borderSide: BorderSide(
                                  color: Colors.grey, // The color of the bottom border
                                  width: 2.0,        // The thickness of the bottom border
                                ),
                              ),
                          // If you want to remove the border when the field is focused,
                          // you can also set the focusedBorder property:
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.red,
                                  width: 2.0,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10), // optional padding
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        ElevatedButton(
                          onPressed: () {

                          },
                          child: Text(AppStrings.login.toUpperCase()),
                          style: ElevatedButton.styleFrom(
                            // 1. **Colors**
                            backgroundColor: AppColors.red,
                            foregroundColor: AppColors.white,
                            // 2. **Shape/Corners**
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12), // Adds 12-pixel rounded corners
                            ),

                            // 3. **Padding/Size**
                            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15), // Custom inner padding

                            // 4. **Text Style**
                            textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),

                            // 5. **Elevation (Shadow)**
                            elevation: 8, // Controls the depth/size of the shadow
                          ),
                        )
                      ],
                    ),
                  ),
                  // Register tab content
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(AppStrings.welcome,style: Theme.of(context).textTheme.titleLarge,),
                        SizedBox(height: 15,),
                        Text(AppStrings.createaccount,style: Theme.of(context).textTheme.bodyMedium,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/1.2,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText:AppStrings.fullname, // your hint
                              border: UnderlineInputBorder(
                                // You can customize the look of the border here
                                borderSide: BorderSide(
                                  color: Colors.grey, // The color of the bottom border
                                  width: 2.0,        // The thickness of the bottom border
                                ),
                              ),
                              // If you want to remove the border when the field is focused,
                              // you can also set the focusedBorder property:
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.red,
                                  width: 2.0,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10), // optional padding
                            ),
                          ),
                        ),
                        SizedBox(height: 25,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/1.2,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText:AppStrings.displayname,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey, // The color of the bottom border
                                  width: 2.0,        // The thickness of the bottom border
                                ),
                              ),
                              // If you want to remove the border when the field is focused,
                              // you can also set the focusedBorder property:
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.red,
                                  width: 2.0,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10), // optional padding
                            ),
                          ),
                        ),
                        SizedBox(height: 25,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/1.2,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText:AppStrings.email, // your hint
                              border: UnderlineInputBorder(
                                // You can customize the look of the border here
                                borderSide: BorderSide(
                                  color: Colors.grey, // The color of the bottom border
                                  width: 2.0,        // The thickness of the bottom border
                                ),
                              ),
                              // If you want to remove the border when the field is focused,
                              // you can also set the focusedBorder property:
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.red,
                                  width: 2.0,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10), // optional padding
                            ),
                          ),
                        ),
                        SizedBox(height: 25,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/1.2,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText:AppStrings.mobile, // your hint
                              border: UnderlineInputBorder(
                                // You can customize the look of the border here
                                borderSide: BorderSide(
                                  color: Colors.grey, // The color of the bottom border
                                  width: 2.0,        // The thickness of the bottom border
                                ),
                              ),
                              // If you want to remove the border when the field is focused,
                              // you can also set the focusedBorder property:
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.red,
                                  width: 2.0,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10), // optional padding
                            ),
                          ),
                        ),
                        SizedBox(height: 25,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/1.2,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText:AppStrings.referalcode, // your hint
                              border: UnderlineInputBorder(
                                // You can customize the look of the border here
                                borderSide: BorderSide(
                                  color: Colors.grey, // The color of the bottom border
                                  width: 2.0,        // The thickness of the bottom border
                                ),
                              ),
                              // If you want to remove the border when the field is focused,
                              // you can also set the focusedBorder property:
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.red,
                                  width: 2.0,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10), // optional padding
                            ),
                          ),
                        ),
                        SizedBox(height: 25,),
                        ElevatedButton(
                          onPressed: () {

                          },
                          child: Text(AppStrings.register.toUpperCase()),
                          style: ElevatedButton.styleFrom(
                            // 1. **Colors**
                            backgroundColor: AppColors.red,
                            foregroundColor: AppColors.white,
                            // 2. **Shape/Corners**
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12), // Adds 12-pixel rounded corners
                            ),

                            // 3. **Padding/Size**
                            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15), // Custom inner padding

                            // 4. **Text Style**
                            textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),

                            // 5. **Elevation (Shadow)**
                            elevation: 8, // Controls the depth/size of the shadow
                          ),
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
