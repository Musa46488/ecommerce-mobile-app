import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/constants/appcolors.dart';
import 'package:flutter_application_1/src/helpers/responsive.dart';
import 'package:google_fonts/google_fonts.dart';

class SaleCardwidget extends StatelessWidget {
  final String title1;
  final String title2;
  final String image;
  const SaleCardwidget({
    super.key,
    required this.title1,
    required this.title2,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: Responsive.heightPercentage(context, 0.12),
        width: Responsive.widthPercentage(context, 0.22),
        decoration: BoxDecoration(
          color: AppColors.contentColorLightGreyishRed,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Spacer(),
              Text(
                title1,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: Responsive.fontSize(
                    context,
                    mobile: 10,
                    tablet: 12,
                    desktop: 14,
                  ),
                  fontWeight: FontWeight.w600,
                  color: AppColors.contentColorBlack,
                ),
              ),
              Text(
                title2,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: Responsive.fontSize(
                    context,
                    mobile: 10,
                    tablet: 12,
                    desktop: 14,
                  ),
                  fontWeight: FontWeight.w600,
                  color: AppColors.contentColorBlack,
                ),
              ),
              SizedBox(
                height: Responsive.heightPercentage(context, 0.07),
                width: double.infinity,
                child: Image.asset(image, fit: BoxFit.fill),
              ),
              SizedBox(height: Responsive.heightPercentage(context, 0.004)),
            ],
          ),
        ),
      ),
    );
  }
}
