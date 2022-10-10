import 'dart:async';

import 'package:tut_app_mvvm_design_pattern/core/base_view_model/base_view_model.dart';
import 'package:tut_app_mvvm_design_pattern/core/utils/app_assets.dart';
import 'package:tut_app_mvvm_design_pattern/core/utils/app_constants.dart';
import 'package:tut_app_mvvm_design_pattern/domain/model.dart';

class OnBoardingViewModel extends BaseViewModel
    with OnBoardingViewModelInputs, OnBoardingViewModelOutputs {
  final StreamController _streamController =
      StreamController<SliderViewObject>();
  late List<SliderObject> _list;
  int _currentIndex = 0;

  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void starts() {
    _list = _getSliderData();
    _postDataToView();
  }

  @override
  int goNext() {
    int nextIndex = ++_currentIndex;
    if (nextIndex == _list.length) {
      nextIndex = _list.length;
    }
    return nextIndex;
  }

  @override
  int goPrevious() {
    int previousIndex = --_currentIndex;
    if (previousIndex == -1) {
      previousIndex = 0;
    }
    return previousIndex;
  }

  @override
  void onPageChanged(int index) {
    _currentIndex = index;
    _postDataToView();
  }

  @override
  Sink get inputSliderViewObject => _streamController.sink;

  @override
  Stream<SliderViewObject> get outputSliderViewObject =>
      _streamController.stream.map((sliderViewObject) => sliderViewObject);

  // onBoarding private Function
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

  void _postDataToView() {
    inputSliderViewObject.add(
      SliderViewObject(
        sliderObject: _list[_currentIndex],
        numOfSlides: _list.length,
        currentIndex: _currentIndex,
      ),
    );
  }
}

abstract class OnBoardingViewModelInputs //order
{
  int goNext();

  int goPrevious();

  void onPageChanged(int index);

  Sink get inputSliderViewObject;
}

abstract class OnBoardingViewModelOutputs // action
{
  Stream<SliderViewObject> get outputSliderViewObject;
}
