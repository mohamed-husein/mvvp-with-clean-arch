abstract class BaseViewModel extends BaseViewModelInputs with BaseViewModelOutputs
{
  // shared variable and function, used with any view model
}

abstract class BaseViewModelInputs
{
  void starts();   // start view model job

  void dispose();   // will be call when view model dies
}

abstract class BaseViewModelOutputs
{

}