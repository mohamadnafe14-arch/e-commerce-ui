abstract class HomeStates {}

class HomeInitail extends HomeStates {}

class HomeSuccess extends HomeStates {}
class HomeLoading extends HomeStates {}
class HomeFail extends HomeStates {
  final String message;
  HomeFail({required this.message});
}
