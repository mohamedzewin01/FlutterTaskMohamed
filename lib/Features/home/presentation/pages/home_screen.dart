import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tasksd/Features/home/data/repo/products_repo_impl.dart';
import 'package:flutter_tasksd/Features/home/presentation/cubit/product_cubit.dart';
import 'package:flutter_tasksd/core/utils/api_service/api_service.dart';
import 'package:flutter_tasksd/core/utils/theme/color_manager.dart';
import '../../../../core/utils/api_service/get_it.dart';
import '../widgets/product_home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.ofWhite,
      
        body: BlocProvider(
          create: (context) =>
              ProductCubit(ProductsRepoImpl(getIt<ApiService>()))..fetchProducts(),
          child: const HomeBody(),
        ),
      ),
    );
  }
}
