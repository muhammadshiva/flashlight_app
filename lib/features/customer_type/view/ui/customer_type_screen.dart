import 'package:flashlight_cashier/configs/themes/app_colors.dart';
import 'package:flashlight_cashier/configs/themes/app_fonts.dart';
import 'package:flashlight_cashier/constants/app_image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerTypeScreen extends StatelessWidget {
  const CustomerTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen height and width
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Row(
        children: [
          //* Left Section
          Container(
            padding: EdgeInsets.fromLTRB(55.w, 55.w, 55.w, 35.w),
            height: screenHeight,
            width: screenWidth * 0.55,
            color: AppColors.primary,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(AppImageConstant.logoFlashlight, height: 75.w),
                50.verticalSpace,
                RichText(
                  text: TextSpan(
                    style: AppFonts.poppinsTextStyle.copyWith(
                      fontSize: 75.sp,
                      height: 0.9,
                    ),
                    children: [
                      const TextSpan(text: 'We wash '),
                      TextSpan(
                        text: 'better',
                        style: AppFonts.poppinsTextStyle.copyWith(
                          fontWeight: semiBold,
                          color: AppColors.accentOrange,
                        ),
                      ),
                      const TextSpan(text: ' than you do.'),
                    ],
                  ),
                ),
                20.verticalSpace,
                Text(
                  'we providing high-quality\nof services',
                  style: AppFonts.poppinsTextStyle.copyWith(
                    fontSize: 24.sp,
                    fontWeight: light,
                  ),
                ),
                20.verticalSpace,
                RichText(
                  text: TextSpan(
                    style: AppFonts.poppinsTextStyle.copyWith(
                      fontSize: 12.sp,
                      fontWeight: light,
                    ),
                    children: [
                      const TextSpan(
                          text:
                              'Keunggulan dalam kualitas jasa dapat menciptakan kepuasan pelanggan. Oleh karena itu '),
                      TextSpan(
                        text: 'Flashlight',
                        style: AppFonts.poppinsTextStyle.copyWith(
                          fontWeight: semiBold,
                          color: AppColors.accentOrange,
                        ),
                      ),
                      const TextSpan(
                          text:
                              ' selalu berusaha maksimal untuk mencapai hasil yang terbaik.'),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  width: double.infinity,
                  height: 30.w,
                  decoration: BoxDecoration(
                    color: AppColors.darkGray,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      sosmedCard(
                          imagePath: AppImageConstant.icInstagram,
                          title: '@flashlightcleanstar'),
                      sosmedCard(
                          imagePath: AppImageConstant.icTiktok,
                          title: '@flashlightcleanstar'),
                      sosmedCard(
                          imagePath: AppImageConstant.icWa,
                          title: '0822 5744 8420'),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //* Right Section
          Expanded(
            child: Container(
              padding: EdgeInsets.all(25.w),
              height: screenHeight,
              decoration: const BoxDecoration(
                color: AppColors.white,
              ),
              child: Column(
                children: [
                  const Spacer(),
                  Text(
                    'Pilih tipe customer',
                    style: AppFonts.poppinsTextStyle.copyWith(
                      color: AppColors.darkSlate,
                      fontWeight: semiBold,
                      fontSize: 18.sp,
                    ),
                  ),
                  30.verticalSpace,

                  //* Customer Type Card
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customerTypeCard(
                        icon: Icons.person,
                        title: 'Customer Baru',
                      ),
                      20.horizontalSpace,
                      customerTypeCard(
                        icon: Icons.group,
                        title: 'Member',
                      ),
                    ],
                  ),

                  30.verticalSpace,
                  //* Start Order Button
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 48.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: AppColors.accentOrange,
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFEA7C69).withOpacity(0.3),
                            offset: const Offset(0, 8),
                            blurRadius: 24,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Text(
                        'Start Order',
                        style: AppFonts.poppinsTextStyle.copyWith(
                          fontSize: 14.sp,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),

                  const Spacer(),
                  //* Admin Login Button
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 9.w, vertical: 7.w),
                      height: 34.w,
                      width: 127.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.lightGray2,
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.login,
                            color: AppColors.darkSlate,
                          ),
                          const Spacer(),
                          Text(
                            'Admin',
                            style: AppFonts.poppinsTextStyle.copyWith(
                              color: AppColors.darkSlate,
                              fontWeight: semiBold,
                              fontSize: 12.sp,
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  //* Left Section Widget
  Widget sosmedCard({
    required String imagePath,
    required String title,
  }) {
    return Row(
      children: [
        Image.asset(
          imagePath,
          width: 16.w,
        ),
        7.horizontalSpace,
        Text(
          title,
          style: AppFonts.poppinsTextStyle.copyWith(
            fontWeight: light,
            color: AppColors.mediumGray,
          ),
        ),
      ],
    );
  }

  //* Right Section Widget
  Widget customerTypeCard({
    required IconData icon,
    required String title,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: 157.w,
      width: 136.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: AppColors.accentOrange,
        ),
      ),
      child: Column(
        children: [
          Icon(icon, size: 100.w),
          Text(
            title,
            style: AppFonts.poppinsTextStyle.copyWith(
              color: AppColors.darkSlate,
              fontWeight: semiBold,
              fontSize: 13.sp,
            ),
          ),
        ],
      ),
    );
  }
}
