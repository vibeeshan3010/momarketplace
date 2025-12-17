import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:momarketplace/util/app_colors.dart';
import 'package:momarketplace/widgets/bottom_navigationbar.dart';

import '../../../util/strings.dart';
import '../../../widgets/brand_circle.dart';
import '../../../widgets/product_card.dart';
import '../../../widgets/searchbar.dart';
import '../../addproducts/model/product_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<ProductModel> products = [
    ProductModel(
      image: "assets/images/rolex.jpg",
      title: AppStrings.rolex,
      saleimage: "assets/icons/urgent.png",
      price: "Rs.145000",
    ),
    ProductModel(
      image: "assets/images/dior.jpg",
      title: AppStrings.christiandior,
      saleimage: "assets/icons/featured.png",
      price: "Rs.85000",
    ),
    ProductModel(
      image: "assets/images/hermes.jpg",
      title: AppStrings.hermes,
      saleimage: "assets/icons/urgent.png",
      price: "Rs.100000",
    ),
    ProductModel(
      image: "assets/images/gucci.jpg",
      title: AppStrings.gucci,
      saleimage: "assets/icons/featured.png",
      price: "Rs.45000",
    ),
    ProductModel(
      image: "assets/images/audemarspiguet.jpeg",
      title: AppStrings.ap,
      saleimage: "assets/icons/urgent.png",
      price: "Rs.75000",
    ),
  ];
  final List<ProductModel> recentitems = [
    ProductModel(
      image: "assets/images/partyballoon.jpg",
      title: AppStrings.partyballoon12pcs,
      price: "Rs.70",
      saleimage: '',
    ),
    ProductModel(
      image: "assets/images/partyballoon.jpg",
      title: AppStrings.partyballoon10pcs,
      price: "Rs.60",
      saleimage: '',
    ),
    ProductModel(
      image: "assets/images/partyballoon.jpg",
      title: AppStrings.partyballoon5pcs,
      price: "Rs.30",
      saleimage: '',
    ),
    ProductModel(
      image: "assets/images/partyballoon.jpg",
      title: AppStrings.partyballoon5pcs,
      price: "Rs.30",
      saleimage: '',
    ),
    ProductModel(
      image: "assets/images/babysoap.jpg",
      title: AppStrings.babysoap,
      price: "Rs.30",
      saleimage: '',
    ),
    ProductModel(
      image: "assets/images/soap.jpg",
      title: AppStrings.soap,
      price: "Rs.30",
      saleimage: '',
    ),
    ProductModel(
      image: "assets/images/fancy_bottle.jpg",
      title: AppStrings.fancywaterbottle,
      price: "Rs.30",
      saleimage: '',
    ),
    ProductModel(
      image: "assets/images/partyballoon.jpg",
      title: AppStrings.partyballoon5pcs,
      price: "Rs.30",
      saleimage: '',
    ),
    ProductModel(
      image: "assets/images/partyballoon.jpg",
      title: AppStrings.partyballoon5pcs,
      price: "Rs.30",
      saleimage: '',
    ),
  ];

  final ScrollController _scrollController = ScrollController();
  bool _showBackToTopButton = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset >= 100) {
        setState(() {
          _showBackToTopButton = true;
        });
      } else {
        setState(() {
          _showBackToTopButton = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/icons/womenfashion.png",
                                  color: Theme.of(context).iconTheme.color,
                                ),
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              AppStrings.wfashion,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 120,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/mensfashion.png",
                              color: Theme.of(context).iconTheme.color,
                            ),
                            SizedBox(height: 5),
                            Text(
                              AppStrings.mfashion,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 120,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/baby.png",
                              color: Theme.of(context).iconTheme.color,
                            ),
                            SizedBox(height: 5),
                            Text(
                              AppStrings.babyandkids,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 120,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/sofa.png",
                              color: Theme.of(context).iconTheme.color,
                            ),
                            SizedBox(height: 5),
                            Text(
                              AppStrings.fliving,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 120,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/toys.png",
                              color: Theme.of(context).iconTheme.color,
                            ),
                            SizedBox(height: 5),
                            Text(
                              AppStrings.toysandgames,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 120,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/beauty.png",
                              color: Theme.of(context).iconTheme.color,
                            ),
                            SizedBox(height: 5),
                            Text(
                              AppStrings.beautyandpcare,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 120,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/appliance.png",
                              color: Theme.of(context).iconTheme.color,
                            ),
                            SizedBox(height: 5),
                            Text(
                              AppStrings.appliance,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 120,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/sports.png",
                              color: Theme.of(context).iconTheme.color,
                            ),
                            SizedBox(height: 5),
                            Text(
                              AppStrings.appliance,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 120,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/computertech.png",
                              color: Theme.of(context).iconTheme.color,
                            ),
                            SizedBox(height: 5),
                            Text(
                              AppStrings.compandtech,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 120,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/mobilesgadgets.png",
                              color: Theme.of(context).iconTheme.color,
                            ),
                            SizedBox(height: 5),
                            Text(
                              AppStrings.mobileandgagdets,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 120,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/health.png",
                              color: Theme.of(context).iconTheme.color,
                            ),
                            SizedBox(height: 5),
                            Text(
                              AppStrings.healthandnutrition,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 120,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/audio.png",
                              color: Theme.of(context).iconTheme.color,
                            ),
                            SizedBox(height: 5),
                            Text(
                              AppStrings.audiosterioequipments,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 120,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/gaming.png",
                              color: Theme.of(context).iconTheme.color,
                            ),
                            SizedBox(height: 5),
                            Text(
                              AppStrings.vgaming,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 120,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/photography.png",
                              color: Theme.of(context).iconTheme.color,
                            ),
                            SizedBox(height: 5),
                            Text(
                              AppStrings.photography,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 120,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/petsupplies.png",
                              color: Theme.of(context).iconTheme.color,
                            ),
                            SizedBox(height: 5),
                            Text(
                              AppStrings.petsupplies,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 120,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/vehicle.png",
                              color: Theme.of(context).iconTheme.color,
                            ),
                            SizedBox(height: 5),
                            Text(
                              AppStrings.vehicle,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 120,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/property_new.png",
                              color: Theme.of(context).iconTheme.color,
                            ),
                            SizedBox(height: 5),
                            Text(
                              AppStrings.properties,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 4),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                  ),
                  items:
                  [
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
                            child: Image.asset(imagePath, fit: BoxFit.cover),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
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
                          const SizedBox(width: 6),
                          Image.asset(
                            "assets/icons/star.png",
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.red,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_forward, color: AppColors.white),
                        ),
                      ),
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
                                decoration: DottedDecoration(
                                  strokeWidth: 2,
                                  shape: Shape.circle,
                                  color: AppColors.grey,
                                  dash: <int>[5, 10],
                                ),
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.add,
                                    size: 32,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              SizedBox(
                                width: 70,
                                child: Text(
                                  AppStrings.boostproducts,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.labelMedium,
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
                            dashPattern: [11, 20],
                          ),
                          SizedBox(width: 15),
                          BrandCircleWidget(
                            image: "assets/images/brand2.jpg",
                            title: AppStrings.moose,
                            borderColor: AppColors.red,
                            dashPattern: [05, 20],
                          ),
                          SizedBox(width: 15),
                          BrandCircleWidget(
                            image: "assets/images/brand3.jpg",
                            title: AppStrings.kellyfelder,
                            borderColor: AppColors.red,
                            dashPattern: [11, 20],
                          ),
                          SizedBox(width: 15),
                          BrandCircleWidget(
                            image: "assets/images/brand4.jpeg",
                            title: AppStrings.avi,
                            borderColor: AppColors.red,
                            dashPattern: [11, 20],
                          ),
                          SizedBox(width: 15),
                          BrandCircleWidget(
                            image: "assets/images/brand5.jpeg",
                            title: AppStrings.carnage,
                            borderColor: AppColors.red,
                            dashPattern: [11, 20],
                          ),
                          SizedBox(width: 15),
                          BrandCircleWidget(
                            image: "assets/images/brand6.jpg",
                            title: AppStrings.scyzellus,
                            borderColor: AppColors.red,
                            dashPattern: [05, 20],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ProductCard(
                          image: "assets/images/product2.jpg",
                          title: AppStrings.redpartydress,
                          saleimage: "assets/icons/urgent.png",
                          price: "Rs.15000",
                        ),
                        SizedBox(width: 15),
                        ProductCard(
                          image: "assets/images/product1.jpg",
                          title: AppStrings.playstation,
                          saleimage: "assets/icons/featured.png",
                          price: "Rs.150000",
                        ),
                        SizedBox(width: 15),
                        ProductCard(
                          image: "assets/images/product3.jpg",
                          title: AppStrings.blackshortdrees,
                          saleimage: "assets/icons/urgent.png",
                          price: "Rs.8000",
                        ),
                        SizedBox(width: 15),
                        ProductCard(
                          image: "assets/images/product4.png",
                          title: AppStrings.denim,
                          saleimage: "assets/icons/featured.png",
                          price: "Rs.4000",
                        ),
                        SizedBox(width: 15),
                        ProductCard(
                          image: "assets/images/product5.jpg",
                          title: AppStrings.iphone,
                          saleimage: "assets/icons/urgent.png",
                          price: "Rs.350000",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "assets/images/mo.png",
                              height: 50,
                              width: 50,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            AppStrings.designer,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.red,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_forward, color: AppColors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  height: 300,
                  child: PageView.builder(
                    controller: PageController(
                      viewportFraction: 0.75,
                    ),
                    itemCount: products.length,
                    physics: const PageScrollPhysics(),
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: ProductCard(
                          image: product.image,
                          title: product.title,
                          saleimage: product.saleimage,
                          price: product.price,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            AppStrings.recentlyadded,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          const SizedBox(width: 6),
                          Image.asset(
                            "assets/icons/recent.png",
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.red,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_forward, color: AppColors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ProductCard(
                              image: "assets/images/recent1.jpg",
                              title: AppStrings.scrunchies,
                              price: "Rs.150",
                            ),
                            SizedBox(width: 15),
                            ProductCard(
                              image: "assets/images/recent2.jpg",
                              title: AppStrings.storybook,
                              price: "Rs.1500",
                            ),
                            SizedBox(width: 15),
                            ProductCard(
                              image: "assets/images/recent3.jpeg",
                              title: AppStrings.chanel,
                              price: "Rs.8000",
                            ),
                            SizedBox(width: 15),
                            ProductCard(
                              image: "assets/images/recent4.jpg",
                              title: AppStrings.blackhawk,
                              price: "Rs.4000",
                            ),
                            SizedBox(width: 15),
                            ProductCard(
                              image: "assets/images/recent5.jpg",
                              title: AppStrings.cricketgloves,
                              price: "Rs.3500",
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            ProductCard(
                              image: "assets/images/recent6.jpg",
                              title: AppStrings.cricbat,
                              price: "Rs.15000",
                            ),
                            SizedBox(width: 15),
                            ProductCard(
                              image: "assets/images/recent7.jpg",
                              title: AppStrings.helmet,
                              price: "Rs.15000",
                            ),
                            SizedBox(width: 15),
                            ProductCard(
                              image: "assets/images/product3.jpg",
                              title: AppStrings.blackshortdrees,
                              price: "Rs.8000",
                            ),
                            SizedBox(width: 15),
                            ProductCard(
                              image: "assets/images/product4.png",
                              title: AppStrings.denim,
                              price: "Rs.10000",
                            ),
                            SizedBox(width: 15),
                            ProductCard(
                              image: "assets/images/product5.jpg",
                              title: AppStrings.iphone,
                              price: "Rs.350000",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: AppColors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 10),
                        Image.asset("assets/images/mo.png", height: 50, width: 50),
                        SizedBox(height: 10),
                        Text(
                          AppStrings.morelikeit,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: 0.7,
                    ),
                    itemCount: recentitems.length,
                    itemBuilder: (context, index) {
                      final product = recentitems[index];
                      return SizedBox(
                        child: ProductCard(
                          image: product.image,
                          title: product.title,
                          price: product.price,
                        ),
                      );
                    },
                  ),
                ),
                if (_showBackToTopButton)
                 Align(
                   alignment: Alignment.bottomRight,
    child: Padding(
      padding: const EdgeInsets.only(right: 8.0,bottom: 8.0),
      child: FloatingActionButton(
      backgroundColor: Colors.red,
        onPressed: () {
          _scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        },
        child:  Icon(Icons.arrow_upward,color: AppColors.white,),
      ),
    ),
    ),


              ],
            ),
          ),

        ],
      )
    );
  }
}
