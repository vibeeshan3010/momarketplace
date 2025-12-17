import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:momarketplace/provider/productdetails_provider.dart';
import 'package:momarketplace/provider/products_provider.dart';
import 'package:momarketplace/util/strings.dart';
import 'package:provider/provider.dart';

import '../../../route/routes.dart';
import '../../../util/app_colors.dart';
import '../../../widgets/dimension_item.dart';
import '../../../widgets/info_card.dart';
enum ReportOption {
  falseInformation,
  notBabySafe,
  damagedItem,
  other
}
class ProductsDetailScreen extends StatefulWidget {
  const ProductsDetailScreen({super.key});


  @override
  State<ProductsDetailScreen> createState() => _ProductsDetailScreenState();
}

class _ProductsDetailScreenState extends State<ProductsDetailScreen> {
  ReportOption? _selectedReport = null;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      getProductDetails();
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ProductDetailsProvider>(
        builder: (context, provider, _) {
          if (provider.isLoading) {
            return  Center(
              child: CircularProgressIndicator(color: AppColors.red),
            );
          }
          final product = provider.productdetail;

          if (product == null) {
            return const Center(child: Text(AppStrings.noproducts));
          }

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:16.0),
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                        child: IconButton(onPressed: (){
                          Navigator.pop(context);
                        }, icon:  Icon(Icons.keyboard_arrow_left),)
                    ),
                  ),
                  if (product.images?.isNotEmpty == true)
                    Container(
                      child: Image.network(product.images![0],),

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text(product.title ?? '',style: Theme.of(context).textTheme.headlineMedium)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: AppColors.amber,),
                              SizedBox(width: 5,),
                              Text(product.rating.toString(),style: Theme.of(context).textTheme.labelLarge),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                  Text(product.brand ?? '',style: Theme.of(context).textTheme.labelLarge),
                  SizedBox(height: 10,),
                  Text(
                    product.price != null
                        ? 'Rs. ${product.price!.toStringAsFixed(2)}'
                        : '',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                SizedBox(height: 10,),
                Text(AppStrings.description,style: Theme.of(context).textTheme.labelLarge,),
                  SizedBox(height: 5,),
                  Text(product.description ?? '',style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 12)),
                  SizedBox(height: 10,),
                  Text(AppStrings.weight,style: Theme.of(context).textTheme.titleMedium,),
                  SizedBox(height: 5,),
                  Text('${product.weight} g',style: Theme.of(context).textTheme.headlineSmall),
                  SizedBox(height: 15,),
                  Text(AppStrings.dimension,style: Theme.of(context).textTheme.titleMedium,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Height: ${product.dimensions?.height ?? '-'}',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'Width: ${product.dimensions?.width ?? '-'}',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'Depth: ${product.dimensions?.depth ?? '-'}',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                      Row(
                        children: [
                          ElevatedButton(onPressed: (){}, child: Text(AppStrings.makeanoffer)),
                          SizedBox(width: 10,),
                          ElevatedButton(onPressed: (){}, child: Icon(FontAwesomeIcons.cartShopping))
                        ],
                      ),

            SizedBox(height: 20,),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(), // circular
                    padding: const EdgeInsets.all(16), // button size
                    backgroundColor: AppColors.red,
                    foregroundColor: Colors.white,
                    elevation: 2,
                  ),
                  child: const Icon(FontAwesomeIcons.facebook),
                ),

                SizedBox(width: 10,),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(), // circular
                    padding: const EdgeInsets.all(16), // button size
                    backgroundColor: AppColors.red,
                    foregroundColor: Colors.white,
                    elevation: 2,
                  ),
                  child: const Icon(FontAwesomeIcons.whatsapp),
                ),
                SizedBox(width: 10,),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(), // circular
                    padding: const EdgeInsets.all(16), // button size
                    backgroundColor: AppColors.red,
                    foregroundColor: Colors.white,
                    elevation: 2,
                  ),
                  child: const Icon(FontAwesomeIcons.instagram),
                ),

                ],
              ),
                  SizedBox(height: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.report,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          SizedBox(height: 10),
                          Text(AppStrings.reportcaption, style:  Theme.of(context).textTheme.displaySmall,),
                          SizedBox(height: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start, // aligns to start
                            children: [
                              Row(
                                children: [
                                  // Column 1
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Radio<ReportOption>(
                                          groupValue: _selectedReport,
                                          value: ReportOption.falseInformation,
                                          onChanged: (value) {
                                            setState(() {
                                              _selectedReport = value;
                                            });
                                          },
                                        ),
                                      Text(AppStrings.falseinfo,style:  Theme.of(context).textTheme.displaySmall),
                                      ],
                                    ),
                                  ),

                                  // Column 2
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Radio<ReportOption>(
                                          groupValue: _selectedReport,
                                          value: ReportOption.damagedItem,
                                          onChanged: (value) {
                                            setState(() {
                                              _selectedReport = value;
                                            });
                                          },
                                        ),
                                       Text(AppStrings.damageditem,style:  Theme.of(context).textTheme.displaySmall),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Radio<ReportOption>(
                                          groupValue: _selectedReport,
                                          value: ReportOption.notBabySafe,
                                          onChanged: (value) {
                                            setState(() {
                                              _selectedReport = value;
                                            });
                                          },
                                        ),
                                        Text(AppStrings.notbabysafe,style:  Theme.of(context).textTheme.displaySmall),
                                      ],
                                    ),
                                  ),

                                  Expanded(
                                    child: Row(
                                      children: [
                                        Radio<ReportOption>(
                                          groupValue: _selectedReport,
                                          value: ReportOption.other,
                                          onChanged: (value) {
                                            setState(() {
                                              _selectedReport = value;
                                            });
                                          },
                                        ),
                                        Text(AppStrings.other,style:  Theme.of(context).textTheme.displaySmall),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  ElevatedButton(onPressed: (){}, child: Text(AppStrings.sendreport)),
                                  SizedBox(width: 20,),
                                  ElevatedButton(onPressed: (){}, child: Text(AppStrings.cancel))
                                ],
                              ),
                              SizedBox(height: 50,)
                            ],
                          )

                        ],
                      )
                    ],
                  ),

          ));
        },
      ),
    );
  }

  void getProductDetails() {
    final provider = Provider.of<ProductDetailsProvider>(context,listen:false);
    provider.getProductDetails(provider.productId!);
  }
}
