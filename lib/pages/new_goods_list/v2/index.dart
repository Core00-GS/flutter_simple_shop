import 'package:dataoke_sdk/dd_dataoke_sdk.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_more_list/loading_more_list.dart';

import '../../../widgets/waterfall_goods_card.dart';
import 'appbar.dart';
import 'goods_list_params_model.dart';
import 'repository.dart';

///新的产品列表页面
class CategoryGoodsList extends ConsumerStatefulWidget {
  final Category category;

  const CategoryGoodsList(this.category, {Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _CategoryGoodsListState();
  }
}

class _CategoryGoodsListState extends ConsumerState<CategoryGoodsList> {
  ///数据仓库
  ProductListRepository repository = ProductListRepository();

  //页面所需要的参数
  late GoodsListParamsModel state = GoodsListParamsModel(category: widget.category, initLoading: true, page: 1, products: []);

  @override
  void initState() {
    repository.changeState(state);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LoadingMoreCustomScrollView(
      slivers: [
        LoadingMoreSliverList(SliverListConfig<Product>(
            itemBuilder: _renderLayout,
            sourceList: repository,
            padding: const EdgeInsets.all(12),
            extendedListDelegate:
                const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12)))
      ],
    );
  }

  ///渲染产品布局
  Widget _renderLayout(BuildContext context, Product product, int index) {
    return WaterfallGoodsCard(product);
  }

// 排序切换
  void sortChange(int index) {
    switch (index) {
      case 0:
        state = state.copyWith(sort: DdSort.defaultSort);
        break;
      case 1:
        state = state.copyWith(sort: DdSort.timeHighToLow);
        break;
      case 2:
        state = state.copyWith(sort: DdSort.salesHighToLow);
        break;
      case 3:
        final sort = state.sort;
        if (sort != DdSort.priceLowToHigh) {
          state = state.copyWith(sort: DdSort.priceLowToHigh);
        } else {
          state = state.copyWith(sort: DdSort.priceHighToLow);
        }
        break;
      default:
        break;
    }
    repository.changeState(state);
    repository.refresh();
  }

  ///刷新UI
  void notifyListeners() {
    if (mounted) {
      setState(() {});
    }
  }
}
