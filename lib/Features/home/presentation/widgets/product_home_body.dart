import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/product_cubit.dart';
import 'custom_product_item.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductSuccess) {
          var products = state.productsModel;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 6 / 9),
              itemCount: state.productsModel.length,
              itemBuilder: (context, index) {
                return CustomProductsItem(
                  product: products[index],
                );
              },
            ),
          );
        } else if (state is ProductFailure) {
          return Center(child: Text(state.errorMessage));
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
