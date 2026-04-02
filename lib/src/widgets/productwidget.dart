import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/constants/appcolors.dart';
import 'package:flutter_application_1/src/constants/appimages.dart';
import 'package:flutter_application_1/src/helpers/responsive.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductWidget extends StatelessWidget {
  final String title;

  final String time;
  final String cost;
  final String image;
  const ProductWidget({
    super.key,
    required this.title,
    required this.time,
    required this.cost,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(child: Image.asset(image)),
          SizedBox(height: Responsive.heightPercentage(context, 0.005)),
          SizedBox(
            width: Responsive.widthPercentage(context, 0.22),
            child: Text(
              title,
              style: GoogleFonts.inter(
                fontSize: Responsive.fontSize(
                  context,
                  mobile: 10,
                  tablet: 12,
                  desktop: 14,
                ),
                fontWeight: FontWeight.w700,
                color: AppColors.contentColorBlack,
              ),
            ),
          ),
          Row(
            spacing: 5,
            children: [
              Image.asset(AppImages.timerIcon),
              Text(
                time,
                style: GoogleFonts.poppins(
                  fontSize: Responsive.fontSize(
                    context,
                    mobile: 12,
                    tablet: 14,
                    desktop: 16,
                  ),
                  fontWeight: FontWeight.w400,
                  color: AppColors.contentColorGrey,
                ),
              ),
            ],
          ),
          Row(
            spacing: 5,
            children: [
              Image.asset(AppImages.currencyIcon),
              Text(
                cost,
                style: GoogleFonts.poppins(
                  fontSize: Responsive.fontSize(
                    context,
                    mobile: 15,
                    tablet: 17,
                    desktop: 19,
                  ),
                  fontWeight: FontWeight.w700,
                  color: AppColors.contentColorBlack,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
