import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tasksd/Features/home/data/models/products_model.dart';
import 'package:flutter_tasksd/Features/home/data/repo/products_repo.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.productsRepo) : super(ProductInitial());
  final ProductsRepo productsRepo;

  static ProductCubit get(context) => BlocProvider.of(context);

  Future<void> fetchProducts() async {
    emit(ProductLoading());
    var result = await productsRepo.getProducts();

    result.fold(
      (failure) {
        emit(ProductFailure(failure.errorMessage));
      },
      (productsModel) {
        emit(ProductSuccess(productsModel: productsModel));
      },
    );
  }
}
