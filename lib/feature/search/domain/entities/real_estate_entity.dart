import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';

class RealEstateEntity {
    final int id;
    final String? name;
    final List<String>? gallery;
    final List<RealEstateCategoryEntity>? categories;
    final DirectionEntity? direction;
    final String? address;
    final double? price;
    final String? status;
    final DateTime? createdAt;

  RealEstateEntity({
    required this.id,
    required this.name,   
    required this.gallery,
    required this.categories,
    required this.direction,
    required this.address,
    required this.price,
    required this.status,
    required this.createdAt,
  });
}
