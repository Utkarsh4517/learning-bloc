part of 'home_bloc_bloc.dart';

@immutable
sealed class HomeBlocState {}

abstract class HomeActionState extends HomeBlocState {}

class HomeBlocInitial extends HomeBlocState {}

class HomeLoadingState extends HomeBlocState {}

class HomeLoadedSuccessState extends HomeBlocState {
  final List<ProductDataModel> products;

  HomeLoadedSuccessState({
    required this.products,
  });
}

class HomeErrorState extends HomeBlocState {}

class HomeNavigateToWishlistPageActionState extends HomeActionState {}

class HomeNavigateToCartPageActionState extends HomeActionState {}
