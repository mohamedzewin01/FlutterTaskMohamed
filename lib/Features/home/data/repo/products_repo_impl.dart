import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_tasksd/Features/home/data/models/products_model.dart';
import 'package:flutter_tasksd/core/utils/api_service/api_service.dart';
import '../../../../core/failure/failures.dart';
import 'products_repo.dart';

class ProductsRepoImpl implements ProductsRepo {
  ProductsRepoImpl(this.apiService);

  final ApiService apiService;

  @override
  Future<Either<ServerFailure, List<ProductModel>>> getProducts() async {
    try {
      var data = await apiService.getProducts(endPoint: 'products');

      List<dynamic> productsJsonList = data as List<dynamic>;
      List<ProductModel> productsList = productsJsonList
          .map((productJson) => ProductModel.fromJson(productJson))
          .toList();

      return right(productsList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
