import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tut_app_mvvm_design_pattern/core/app_component/custom_app_bar.dart';
import 'package:tut_app_mvvm_design_pattern/core/global/theme/theme_color/theme_color_light.dart';
import 'package:tut_app_mvvm_design_pattern/core/utils/app_constants.dart';
import 'package:tut_app_mvvm_design_pattern/core/utils/app_assets.dart';
import 'package:tut_app_mvvm_design_pattern/core/utils/app_sizes.dart';
import 'package:tut_app_mvvm_design_pattern/core/widget/buttons/custom_text_button.dart';
import 'package:tut_app_mvvm_design_pattern/core/widget/custom_text.dart';

class SliderObject {
  final String title;
  final String subTitle;
  final String image;

  SliderObject({
    required this.title,
    required this.subTitle,
    required this.image,
  });
}

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> _list = _getSliderData();
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  List<SliderObject> _getSliderData() => [
        SliderObject(
            title: AppConstants.onBoardingTitle1,
            subTitle: AppConstants.onBoardingBody1,
            image: AppAssets.onBoardingLogo1),
        SliderObject(
            title: AppConstants.onBoardingTitle2,
            subTitle: AppConstants.onBoardingBody2,
            image: AppAssets.onBoardingLogo2),
        SliderObject(
            title: AppConstants.onBoardingTitle3,
            subTitle: AppConstants.onBoardingBody3,
            image: AppAssets.onBoardingLogo3),
        SliderObject(
            title: AppConstants.onBoardingTitle4,
            subTitle: AppConstants.onBoardingBody4,
            image: AppAssets.onBoardingLogo4),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColorLight.white,
      appBar: const CustomAppBar(
        title: "",
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: _list.length,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return OnBoardingPage(_list[index]);
        },
      ),
      bottomSheet: Container(
        color: ThemeColorLight.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
                alignment: Alignment.centerRight,
                child: CustomTextButton(
                  onPressed: () {},
                  textButton: AppConstants.skip,
                )),

            // widgets indicator and arrows
            _getBottomSheetWidget()
          ],
        ),
      ),
    );
  }

  Widget _getBottomSheetWidget() {
    return Container(
      color: ThemeColorLight.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // left arrow
          Padding(
            padding:  EdgeInsets.all(AppSizes.pH14),
            child: GestureDetector(
              child: SizedBox(
                width: AppSizes.sizedBoxWidthSmall,
                height: AppSizes.sizedBoxHeightSmall,
                child: SvgPicture.asset(AppAssets.leftArrowIc),
              ),
              onTap: () {
                // go to previous slide
                _pageController.animateToPage(_getPreviousIndex(),
                    duration: const Duration(
                        milliseconds: AppConstants.sliderAnimationTime),
                    curve: Curves.bounceInOut);
              },
            ),
          ),
          // circle indicator
          // right arrow
          Row(
            children: [
              for (int i = 0; i < _list.length; i++)
                Padding(
                  padding:  EdgeInsets.all(AppSizes.pH8),
                  child: _getProperCircle(i),
                )
            ],
          ),
          Padding(
            padding:  EdgeInsets.all(AppSizes.pH14),
            child: GestureDetector(
              child: SizedBox(
                width: AppSizes.sizedBoxWidthSmall,
                height: AppSizes.sizedBoxHeightSmall,
                child: SvgPicture.asset(AppAssets.rightArrowIc),
              ),
              onTap: () {
                // go to previous slide
                _pageController.animateToPage(_getNextIndex(),
                    duration: const Duration(
                        milliseconds: AppConstants.sliderAnimationTime),
                    curve: Curves.bounceInOut);
              },
            ),
          )
        ],
      ),
    );
  }

  int _getPreviousIndex() {
    int previousIndex = --_currentIndex;
    if (previousIndex == -1) {
      previousIndex = 0;
    }
    return previousIndex;
  }

  int _getNextIndex() {
    int nextIndex = ++_currentIndex;
    if (nextIndex == _list.length) {
      nextIndex = _list.length;
    }
    return nextIndex;
  }

  Widget _getProperCircle(int index) {
    if (index == _currentIndex) {
      return SvgPicture.asset(
        AppAssets.hollowCircleIc,
        width: 15,
        height: 15,
      );
    } else {
      return SvgPicture.asset(AppAssets.solidCircleIc);
    }
  }
}

class OnBoardingPage extends StatelessWidget {
  final SliderObject _sliderObject;

  const OnBoardingPage(this._sliderObject, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: AppSizes.sizedBoxWidthMedium),
        Padding(
          padding:  EdgeInsets.all(AppSizes.pH8),
          child: CustomText.displayMedium(
            buildContext: context,
            _sliderObject.title,
          ),
        ),
        Padding(
          padding:  EdgeInsets.all(AppSizes.pH8),
          child: CustomText.labelMedium(
            _sliderObject.subTitle,
            textAlign: TextAlign.center,
            buildContext: context,
          ),
        ),
         SizedBox(height: AppSizes.sizedBoxHeight2X),
        SvgPicture.asset(_sliderObject.image)
      ],
    );
  }
}
