part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}
final class ProductFailure extends ProductState {
  final String errorMessage;

  ProductFailure(this.errorMessage);
}
final class ProductSuccess extends ProductState {
  final   List<ProductModel> productsModel;
  ProductSuccess({required this.productsModel});
}
final class ProductLoading extends ProductState {}
