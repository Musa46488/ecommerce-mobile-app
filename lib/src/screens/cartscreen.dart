import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/constants/appcolors.dart';
import 'package:flutter_application_1/src/constants/appimages.dart';
import 'package:flutter_application_1/src/helpers/responsive.dart';
import 'package:flutter_application_1/src/widgets/appbarwidget.dart';
import 'package:flutter_application_1/src/widgets/navbarwidget.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.contentColorWhite,
      body: Column(
        children: [
          SizedBox(height: Responsive.heightPercentage(context, 0.05)),
          AppBarWidget(
            backgroundColor: AppColors.contentColorYellow,
            textColor: AppColors.contentColorBlack,
            userIconColor: AppColors.contentColorBlack,
            userIconBackgroundColor: AppColors.contentColorWhite,
          ),
          SizedBox(height: Responsive.heightPercentage(context, 0.01)),
          Image.asset(AppImages.shoppingCartImage),
          SizedBox(height: Responsive.heightPercentage(context, 0.02)),
          Text(
            'Reordering will be easy',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.contentColorBlack,
            ),
          ),
          Text(
            'Items you order will show up here so you can buy them again easily.',
            style: GoogleFonts.poppins(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: AppColors.contentColorBlack,
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
