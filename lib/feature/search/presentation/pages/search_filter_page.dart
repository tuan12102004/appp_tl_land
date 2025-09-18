import 'package:app_tl_land_3212/feature/search/presentation/pages/search_filter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchFilterPage extends StatefulWidget {
  final String title;

  const SearchFilterPage({super.key, required this.title});

  @override
  State<SearchFilterPage> createState() => _HistoryEditPageState();
}

class _HistoryEditPageState extends State<SearchFilterPage> {
  final TextEditingController _minPriceController = TextEditingController();
  final TextEditingController _maxPriceController = TextEditingController();
  final FocusNode _minPriceNode = FocusNode();
  final FocusNode _maxPriceNode = FocusNode();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _minPriceController.dispose();
    _maxPriceController.dispose();
    _minPriceNode.dispose();
    _maxPriceNode.dispose();
  }

  void _onBottomCancelPressed(BuildContext context) {
    context.pop();
  }

  void _onBottomActionPressed(BuildContext context) {
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return SearchFilter(
      title: '',
      isIncrease: true,
      minPriceController: _minPriceController,
      maxPriceController: _maxPriceController,
      minPriceNode: _minPriceNode,
      maxPriceNode: _maxPriceNode,
      onBottomActionPressed: () => _onBottomActionPressed(context),
      onBottomCancelPressed: () => _onBottomCancelPressed(context),
    );
  }
}
