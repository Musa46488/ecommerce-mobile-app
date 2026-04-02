import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/constants/appcolors.dart';
import 'package:flutter_application_1/src/helpers/responsive.dart';
import 'package:google_fonts/google_fonts.dart';

class GroceryWidget extends StatelessWidget {
  final String title;
  final String image;
  const GroceryWidget({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: Responsive.widthPercentage(context, 0.18),
            height: Responsive.heightPercentage(context, 0.085),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.contentColorLightGreyishCyan,
            ),
            child: SizedBox(child: Image.asset(image)),
          ),
          SizedBox(height: Responsive.heightPercentage(context, 0.005)),
          SizedBox(
            width: Responsive.widthPercentage(context, 0.16),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: Responsive.fontSize(
                  context,
                  mobile: 10,
                  tablet: 12,
                  desktop: 14,
                ),
                fontWeight: FontWeight.w400,
                color: AppColors.contentColorBlack,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
