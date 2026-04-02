import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/constants/appcolors.dart';
import 'package:flutter_application_1/src/constants/appimages.dart';
import 'package:flutter_application_1/src/controllers/homescreencontroller.dart';
import 'package:flutter_application_1/src/helpers/responsive.dart';
import 'package:flutter_application_1/src/widgets/salecardwidget.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class MegaDiwaliSaleWidget extends StatelessWidget {
  const MegaDiwaliSaleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeScreenController>();
    return Container(
      height: Responsive.heightPercentage(context, 0.22),
      width: double.infinity,
      color: AppColors.contentColorRed,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(AppImages.decorationIcon1),
                Image.asset(AppImages.decorationIcon2),
                Text(
                  'Mega Diwali Sale',
                  style: GoogleFonts.ptSerif(
                    fontSize: Responsive.fontSize(
                      context,
                      mobile: 20,
                      tablet: 22,
                      desktop: 24,
                    ),
                    fontWeight: FontWeight.w700,
                    color: AppColors.contentColorWhite,
                  ),
                ),
                Image.asset(AppImages.decorationIcon2),
                Image.asset(AppImages.decorationIcon1),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: controller.diwaliSaleList.map((saleItem) {
                  return SaleCardwidget(
                    title1: saleItem.title1,
                    title2: saleItem.title2,
                    image: saleItem.image,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
