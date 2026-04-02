import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/constants/appimages.dart';
import 'package:flutter_application_1/src/helpers/responsive.dart';
import 'package:flutter_application_1/src/widgets/searchbarwidget.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final Color userIconColor;
  final Color userIconBackgroundColor;
  const AppBarWidget({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.userIconColor,
    required this.userIconBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Responsive.heightPercentage(context, 0.17),
          width: double.infinity,
          color: backgroundColor,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Blinkit in',
                  style: GoogleFonts.poppins(
                    color: textColor,
                    fontSize: Responsive.fontSize(
                      context,
                      mobile: 12,
                      tablet: 14,
                      desktop: 16,
                    ),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '16 minutes',
                  style: GoogleFonts.poppins(
                    fontSize: Responsive.fontSize(
                      context,
                      mobile: 20,
                      tablet: 22,
                      desktop: 24,
                    ),
                    fontWeight: FontWeight.w700,
                    color: textColor,
                  ),
                ),
                Row(
                  spacing: 2,
                  children: [
                    Text(
                      'Home',
                      style: GoogleFonts.poppins(
                        fontSize: Responsive.fontSize(
                          context,
                          mobile: 12,
                          tablet: 14,
                          desktop: 16,
                        ),
                        fontWeight: FontWeight.w700,
                        color: textColor,
                      ),
                    ),
                    Text(
                      '-',
                      style: GoogleFonts.poppins(
                        fontSize: Responsive.fontSize(
                          context,
                          mobile: 12,
                          tablet: 14,
                          desktop: 16,
                        ),
                        fontWeight: FontWeight.w700,
                        color: textColor,
                      ),
                    ),
                    Text(
                      'Sujal Dave, Ratanada, Jodhpur (Raj)',
                      style: GoogleFonts.poppins(
                        fontSize: Responsive.fontSize(
                          context,
                          mobile: 12,
                          tablet: 14,
                          desktop: 16,
                        ),
                        fontWeight: FontWeight.w400,
                        color: textColor,
                      ),
                    ),
                    SizedBox(width: Responsive.widthPercentage(context, 0.015)),
                    Image.asset(AppImages.arrownDownIcon),
                  ],
                ),
                SizedBox(height: Responsive.heightPercentage(context, 0.02)),
                SearchBarWidget(),
              ],
            ),
          ),
        ),
        Positioned(
          right: Responsive.widthPercentage(context, 0.06),
          top: Responsive.heightPercentage(context, 0.035),
          child: ClipOval(
            child: Container(
              width: Responsive.widthPercentage(context, 0.085),
              height: Responsive.heightPercentage(context, 0.04),
              color: userIconBackgroundColor,
              alignment: Alignment.center,
              child: Icon(Icons.person, color: userIconColor),
            ),
          ),
        ),
      ],
    );
  }
}
