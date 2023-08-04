part of 'news_cubit.dart';

@immutable
abstract class NewsState {}

class NewsInitial extends NewsState {}

class NewsBottomNav extends NewsState {}

class NewsGetBusinessLoadingState extends NewsState {}

class NewsGetBusinessSuccessState extends NewsState {}

class NewsGetBusinessFailureState extends NewsState {
  final String errorMessage;

  NewsGetBusinessFailureState(this.errorMessage);
}

class NewsGetSportsLoadingState extends NewsState {}

class NewsGetSportsSuccessState extends NewsState {}

class NewsGetSportsFailureState extends NewsState {
  final String errorMessage;

  NewsGetSportsFailureState(this.errorMessage);
}

class NewsGetScienceLoadingState extends NewsState {}

class NewsGetScienceSuccessState extends NewsState {}

class NewsGetScienceFailureState extends NewsState {
  final String errorMessage;

  NewsGetScienceFailureState(this.errorMessage);
}

class NewsMakeSearchIsLoading extends NewsState {}

class NewsMakeSearchIsSuccess extends NewsState {}

class NewsMakeSearchIsFailure extends NewsState {
  final String errorMessage;

  NewsMakeSearchIsFailure(this.errorMessage);
}

class AppChangeModeState extends NewsState {}
