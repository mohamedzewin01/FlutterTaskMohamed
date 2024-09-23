
import 'package:dartz/dartz.dart';

import '../../../../core/failure/failures.dart';
import '../models/products_model.dart';



abstract class ProductsRepo {

  Future<Either<ServerFailure, List<ProductModel>>> getProducts();

}
