import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/constants/appcolors.dart';
import 'package:flutter_application_1/src/constants/appimages.dart';
import 'package:flutter_application_1/src/helpers/responsive.dart';
import 'package:flutter_application_1/src/routes/approutes.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.contentColorWhite,
      body: Column(
        children: [
          SizedBox(height: Responsive.heightPercentage(context, 0.02)),
          SizedBox(
            height: Responsive.heightPercentage(context, 0.5),
            width: double.infinity,
            child: Image.asset(AppImages.onBoardObjects, fit: BoxFit.fill),
          ),
          SizedBox(height: Responsive.heightPercentage(context, 0.02)),
          SizedBox(child: Image.asset(AppImages.onBoardLogo, fit: BoxFit.fill)),
          Text(
            "India's last minute app",
            style: GoogleFonts.poppins(
              color: AppColors.contentColorBlack,
              fontSize: Responsive.fontSize(
                context,
                mobile: 20,
                tablet: 22,
                desktop: 24,
              ),
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: Responsive.heightPercentage(context, 0.03)),
          Card(
            shadowColor: AppColors.contentColorGrey,
            child: Container(
              height: Responsive.heightPercentage(context, 0.2),
              width: Responsive.widthPercentage(context, 0.9),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.contentColorWhite,
              ),
              child: Column(
                children: [
                  Text(
                    'Killer Yagami',
                    style: GoogleFonts.poppins(
                      color: AppColors.contentColorBlack,
                      fontSize: Responsive.fontSize(
                        context,
                        mobile: 15,
                        tablet: 17,
                        desktop: 19,
                      ),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '+92 1234 5678 90',
                    style: GoogleFonts.poppins(
                      color: AppColors.contentColorGrey,
                      fontSize: Responsive.fontSize(
                        context,
                        mobile: 14,
                        tablet: 16,
                        desktop: 18,
                      ),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: Responsive.heightPercentage(context, 0.02)),
                  SizedBox(
                    width: Responsive.widthPercentage(context, 0.75),
                    height: Responsive.heightPercentage(context, 0.05),
                    child: ElevatedButton(
                      onPressed: () {
                        debugPrint('Login with Zomato');
                        Get.offNamed(AppRoutes.home);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.contentColorRed,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 5,
                        children: [
                          Padding(
                            padding: EdgeInsetsGeometry.directional(top: 5),
                            child: Text(
                              'Login with',
                              style: GoogleFonts.poppins(
                                fontSize: Responsive.fontSize(
                                  context,
                                  mobile: 14,
                                  tablet: 16,
                                  desktop: 18,
                                ),
                                fontWeight: FontWeight.w700,
                                color: AppColors.contentColorWhite,
                              ),
                            ),
                          ),
                          SizedBox(child: Image.asset(AppImages.zomatoText)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: Responsive.heightPercentage(context, 0.005)),
                  SizedBox(
                    width: Responsive.widthPercentage(context, 0.75),
                    height: Responsive.heightPercentage(context, 0.02),
                    child: Text(
                      'Access your saved addresses from Zomato automatically!',
                      style: GoogleFonts.poppins(
                        color: AppColors.contentColorGrey,
                        fontSize: Responsive.fontSize(
                          context,
                          mobile: 10,
                          tablet: 12,
                          desktop: 14,
                        ),
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      debugPrint('Login with phone number');
                    },
                    child: SizedBox(
                      width: Responsive.widthPercentage(context, 0.45),
                      height: Responsive.heightPercentage(context, 0.025),
                      child: Text(
                        'or login with phone number',
                        style: GoogleFonts.poppins(
                          color: AppColors.contentColorGreen,
                          fontSize: Responsive.fontSize(
                            context,
                            mobile: 14,
                            tablet: 16,
                            desktop: 18,
                          ),
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: Responsive.heightPercentage(context, 0.01)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
