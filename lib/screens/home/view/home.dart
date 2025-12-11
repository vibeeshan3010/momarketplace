import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:momarketplace/util/appcolors.dart';
import 'package:momarketplace/widgets/bottomnavigationbar.dart';

import '../../../util/strings.dart';
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
          ),title: Text(AppStrings.welcome,style: Theme.of(context).textTheme.headlineSmall,),),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 100,
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/womenfashion.png",color: Theme.of(context).iconTheme.color),
                          SizedBox(height: 5,),
                          Text(AppStrings.wfashion,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge,)
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 120,
                      height: 100,
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/mensfashion.png",color: Theme.of(context).iconTheme.color),
                          SizedBox(height: 5,),
                          Text(AppStrings.mfashion,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge,)
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 120,
                      height: 100,
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/baby.png",color: Theme.of(context).iconTheme.color),
                          SizedBox(height: 5,),
                          Text(AppStrings.babyandkids,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge,)
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 120,
                      height: 100,
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/sofa.png",color: Theme.of(context).iconTheme.color),
                          SizedBox(height: 5,),
                          Text(AppStrings.fliving,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge,)
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 120,
                      height: 100,
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/toys.png",color: Theme.of(context).iconTheme.color),
                          SizedBox(height: 5,),
                          Text(AppStrings.toysandgames,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge,)
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 120,
                      height: 100,
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/beauty.png",color: Theme.of(context).iconTheme.color),
                          SizedBox(height: 5,),
                          Text(AppStrings.beautyandpcare,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge,)
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 120,
                      height: 100,
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/appliance.png",color: Theme.of(context).iconTheme.color),
                          SizedBox(height: 5,),
                          Text(AppStrings.appliance,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge,)
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 120,
                      height: 100,
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/sports.png",color: Theme.of(context).iconTheme.color),
                          SizedBox(height: 5,),
                          Text(AppStrings.appliance,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge,)
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 120,
                      height: 100,
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/computertech.png",color: Theme.of(context).iconTheme.color),
                          SizedBox(height: 5,),
                          Text(AppStrings.compandtech,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge,)
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 120,
                      height: 100,
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/mobilesgadgets.png",color: Theme.of(context).iconTheme.color),
                          SizedBox(height: 5,),
                          Text(AppStrings.mobileandgagdets,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge,)
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 120,
                      height: 100,
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/health.png",color: Theme.of(context).iconTheme.color),
                          SizedBox(height: 5,),
                          Text(AppStrings.healthandnutrition,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge,)
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 120,
                      height: 100,
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/audio.png",color: Theme.of(context).iconTheme.color),
                          SizedBox(height: 5,),
                          Text(AppStrings.audiosterioequipments,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge,)
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 120,
                      height: 100,
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/gaming.png",color: Theme.of(context).iconTheme.color),
                          SizedBox(height: 5,),
                          Text(AppStrings.vgaming,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge,)
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 120,
                      height: 100,
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/photography.png",color: Theme.of(context).iconTheme.color),
                          SizedBox(height: 5,),
                          Text(AppStrings.photography,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge,)
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 120,
                      height: 100,
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/petsupplies.png",color: Theme.of(context).iconTheme.color),
                          SizedBox(height: 5,),
                          Text(AppStrings.petsupplies,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge,)
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 120,
                      height: 100,
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/vehicle.png",color: Theme.of(context).iconTheme.color),
                          SizedBox(height: 5,),
                          Text(AppStrings.vehicle,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge)
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 120,
                      height: 100,
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/property_new.png",color: Theme.of(context).iconTheme.color,),
                          SizedBox(height: 5,),
                          Text(AppStrings.properties,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge,)
                        ],
                      ),
                    ),
                  ],
                ),

              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true, // autoplay
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  enlargeCenterPage: true,
                  viewportFraction: 1, // optional: full width slide
                ),
                items: [
                  "assets/images/carousel_image1.jpg",
                  "assets/images/carousel_image2.jpg",
                  "assets/images/carousel_image3.jpg",
                ].map((imagePath) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            imagePath,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              )

            ],
          ),
        ),
    );
  }
}
