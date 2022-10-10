import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tut_app_mvvm_design_pattern/core/app_component/custom_app_bar.dart';
import 'package:tut_app_mvvm_design_pattern/core/global/theme/theme_color/theme_color_light.dart';
import 'package:tut_app_mvvm_design_pattern/core/utils/app_constants.dart';
import 'package:tut_app_mvvm_design_pattern/core/utils/app_assets.dart';
import 'package:tut_app_mvvm_design_pattern/core/utils/app_sizes.dart';
import 'package:tut_app_mvvm_design_pattern/core/widget/buttons/custom_text_button.dart';
import 'package:tut_app_mvvm_design_pattern/core/widget/custom_text.dart';
import 'package:tut_app_mvvm_design_pattern/domain/model.dart';
import 'package:tut_app_mvvm_design_pattern/presentation/screens/onboard/view_model/onboard_view_model.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _pageController = PageController();
  final OnBoardingViewModel _viewModel = OnBoardingViewModel();

  _bind() {
    _viewModel.starts();
  }

  @override
  void initState() {
    _bind();
    super.initState();
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SliderViewObject>(
      stream: _viewModel.outputSliderViewObject,
      builder: (context, snapshot) {
        return _getContentWidget(snapshot.data);
      },
    );
  }

  Widget _getContentWidget(SliderViewObject? sliderViewObject) {
    if (sliderViewObject == null) {
      return Container();
    } else {
      return Scaffold(
        backgroundColor: ThemeColorLight.white,
        appBar: const CustomAppBar(
          title: AppConstants.emptyAppBar,
        ),
        body: PageView.builder(
          physics: const BouncingScrollPhysics(),
          controller: _pageController,
          itemCount: sliderViewObject.numOfSlides,
          onPageChanged: (index) {
            _viewModel.onPageChanged(index);
          },
          itemBuilder: (context, index) {
            return OnBoardingPage(sliderViewObject.sliderObject);
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
                ),
              ),
              _getBottomSheetWidget(sliderViewObject)
            ],
          ),
        ),
      );
    }
  }

  Widget _getBottomSheetWidget(SliderViewObject sliderViewObject) {
    return Container(
      color: ThemeColorLight.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // left arrow
          Padding(
            padding: EdgeInsets.all(AppSizes.pH14),
            child: GestureDetector(
              child: SizedBox(
                width: AppSizes.sizedBoxWidthSmall,
                height: AppSizes.sizedBoxHeightSmall,
                child: SvgPicture.asset(AppAssets.leftArrowIc),
              ),
              onTap: () {
                // go to previous slide
                _pageController.animateToPage(_viewModel.goPrevious(),
                    duration: const Duration(
                        milliseconds: AppConstants.sliderAnimationTime),
                    curve: Curves.fastLinearToSlowEaseIn);
              },
            ),
          ),
          // circle indicator
          Row(
            children: [
              for (int i = 0; i < sliderViewObject.numOfSlides; i++)
                Padding(
                  padding: EdgeInsets.all(AppSizes.pH8),
                  child: _getProperCircle(i, sliderViewObject.currentIndex),
                )
            ],
          ),
          // right arrow
          Padding(
            padding: EdgeInsets.all(AppSizes.pH14),
            child: GestureDetector(
              child: SizedBox(
                width: AppSizes.sizedBoxWidthSmall,
                height: AppSizes.sizedBoxHeightSmall,
                child: SvgPicture.asset(AppAssets.rightArrowIc),
              ),
              onTap: () {
                // go to previous slide
                _pageController.animateToPage(_viewModel.goNext(),
                    duration: const Duration(
                        milliseconds: AppConstants.sliderAnimationTime),
                    curve: Curves.fastLinearToSlowEaseIn);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _getProperCircle(int index, int currentIndex) {
    if (index == currentIndex) {
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
          padding: EdgeInsets.all(AppSizes.pH8),
          child: CustomText.displayMedium(
            buildContext: context,
            _sliderObject.title,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(AppSizes.pH8),
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
