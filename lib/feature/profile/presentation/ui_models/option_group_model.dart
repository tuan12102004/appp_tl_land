import 'option_item_model.dart';

class OptionGroupModel {
  final String label;
  final List<OptionItemModel> children;

  OptionGroupModel({required this.label, required this.children});
}
