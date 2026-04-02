import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/constants/appcolors.dart';
import 'package:flutter_application_1/src/controllers/homescreencontroller.dart';
import 'package:flutter_application_1/src/helpers/responsive.dart';
import 'package:flutter_application_1/src/widgets/appbarwidget.dart';
import 'package:flutter_application_1/src/widgets/grocerywidget.dart';
import 'package:flutter_application_1/src/widgets/megadiwalisalewidget.dart';
import 'package:flutter_application_1/src/widgets/navbarwidget.dart';
import 'package:flutter_application_1/src/widgets/productwidget.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeScreenController>();
    return Scaffold(
      backgroundColor: AppColors.contentColorWhite,
      body: Column(
        children: [
          SizedBox(height: Responsive.heightPercentage(context, 0.05)),
          AppBarWidget(
            backgroundColor: AppColors.contentColorRed,
            textColor: AppColors.contentColorWhite,
            userIconColor: AppColors.contentColorWhite,
            userIconBackgroundColor: AppColors.contentColorBlack,
          ),
          SizedBox(height: Responsive.heightPercentage(context, 0.0015)),
          MegaDiwaliSaleWidget(),
          SizedBox(height: Responsive.heightPercentage(context, 0.01)),
          Padding(
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: controller.productList.map((product) {
                  return ProductWidget(
                    title: product.title,
                    time: product.time,
                    cost: product.cost,
                    image: product.image,
                  );
                }).toList(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Grocery & Kitchen',
                  style: GoogleFonts.poppins(
                    fontSize: Responsive.fontSize(
                      context,
                      mobile: 14,
                      tablet: 16,
                      desktop: 18,
                    ),
                    fontWeight: FontWeight.w700,
                    color: AppColors.contentColorBlack,
                  ),
                ),
                SizedBox(height: Responsive.heightPercentage(context, 0.01)),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: controller.groceryList.map((item) {
                      return GroceryWidget(
                        title: item.title,
                        image: item.image,
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
