import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:momarketplace/util/appcolors.dart';
import 'package:momarketplace/widgets/bottomnavigationbar.dart';

import '../../../util/strings.dart';
import '../../../widgets/BrandCircle.dart';
import '../../../widgets/ProductCard.dart';
import '../../../widgets/searchbar.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Searchbar(),
                SizedBox(height: 10),
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
                SizedBox(height: 20,),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true, // autoplay
                    autoPlayInterval: Duration(seconds: 2),
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
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            AppStrings.topproducts,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          const SizedBox(width: 6), // spacing between text and star
                          Image.asset(
                            "assets/icons/star.png",
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                      Container(decoration:BoxDecoration(shape: BoxShape.circle,color: AppColors.red),child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_forward,color: AppColors.white,),
                      )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 130,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: DottedDecoration(strokeWidth:2,shape: Shape.circle,color: AppColors.grey, dash: <int>[5, 10]),
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.add, size: 32, color: Colors.black),
                                ),
                              ),
                              SizedBox(height: 10),
                              SizedBox(
                                width: 70,
                                child: Text(
                                  AppStrings.boostproducts,
                                  textAlign: TextAlign.center,
                                  style:Theme.of(context).textTheme.labelMedium,
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 15),
                          BrandCircleWidget(
                            image: "assets/images/brand1.jpeg",
                            title: AppStrings.mimosa,
                            borderColor: AppColors.red,
                            dashPattern: [11,20],
                          ),
                          SizedBox(width: 15),
                          BrandCircleWidget(
                            image: "assets/images/brand2.jpg",
                            title: AppStrings.moose,
                            borderColor: AppColors.red,
                            dashPattern: [05,20],
                          ),
                          SizedBox(width: 15),
                          BrandCircleWidget(
                            image: "assets/images/brand3.jpg",
                            title: AppStrings.kellyfelder,
                            borderColor: AppColors.red,
                            dashPattern: [11,20],
                          ),
                          SizedBox(width: 15),
                          BrandCircleWidget(
                            image: "assets/images/brand4.jpeg",
                            title: AppStrings.avi,
                            borderColor: AppColors.red,
                            dashPattern: [11,20],
                          ),
                          SizedBox(width: 15,),
                          BrandCircleWidget(
                            image: "assets/images/brand5.jpeg",
                            title: AppStrings.carnage,
                            borderColor: AppColors.red,
                            dashPattern: [11,20],
                          ),
                          SizedBox(width: 15,),
                          BrandCircleWidget(
                            image: "assets/images/brand6.jpg",
                            title: AppStrings.scyzellus,
                            borderColor: AppColors.red,
                            dashPattern: [05,20],
                          ),

                        ],
                      )

                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(
                        image: "assets/images/product2.jpg",
                        title: AppStrings.redpartydress,
                        saleimage: "assets/icons/urgent.png",
                      ),
                      SizedBox(width: 15),
                      ProductCard(
                        image: "assets/images/product1.jpg",
                        title: AppStrings.playstation,
                        saleimage: "assets/icons/featured.png",
                      ),
                      SizedBox(width: 15),
                      ProductCard(
                        image: "assets/images/product3.jpg",
                        title: AppStrings.blackshortdrees,
                        saleimage: "assets/icons/urgent.png",
                      ),
                      SizedBox(width: 15),
                      ProductCard(
                        image: "assets/images/product4.png",
                        title: AppStrings.denim,
                        saleimage: "assets/icons/featured.png",
                      ),
                      SizedBox(width: 15),
                      ProductCard(
                        image: "assets/images/product5.jpg",
                        title: AppStrings.denim,
                        saleimage: "assets/icons/urgent.png",
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipOval(child: Image.asset("assets/images/mo.png",height:50,width: 50,)),
                          const SizedBox(width: 6), // spacing between text and star
                          Text(AppStrings.designer,style: Theme.of(context).textTheme.titleLarge),
                        ],
                      ),
                      Container(decoration:BoxDecoration(shape: BoxShape.circle,color: AppColors.red),child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_forward,color: AppColors.white,),
                      )),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(
                        image: "assets/images/product2.jpg",
                        title: AppStrings.redpartydress,
                        saleimage: "assets/icons/urgent.png",
                      ),
                      SizedBox(width: 15),
                      ProductCard(
                        image: "assets/images/product1.jpg",
                        title: AppStrings.playstation,
                        saleimage: "assets/icons/featured.png",
                      ),
                      SizedBox(width: 15),
                      ProductCard(
                        image: "assets/images/product3.jpg",
                        title: AppStrings.blackshortdrees,
                        saleimage: "assets/icons/urgent.png",
                      ),
                      SizedBox(width: 15),
                      ProductCard(
                        image: "assets/images/product4.png",
                        title: AppStrings.denim,
                        saleimage: "assets/icons/featured.png",
                      ),
                      SizedBox(width: 15),
                      ProductCard(
                        image: "assets/images/product5.jpg",
                        title: AppStrings.denim,
                        saleimage: "assets/icons/urgent.png",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
