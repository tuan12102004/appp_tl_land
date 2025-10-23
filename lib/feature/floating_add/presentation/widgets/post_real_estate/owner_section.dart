import 'package:app_tl_land_3212/common/widgets/custom_adaptive_button.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_expansion_title.dart';
import 'package:app_tl_land_3212/feature/home/presentation/pages/home_page.dart';
import 'package:app_tl_land_3212/feature/home/presentation/widgets/detail/custom_expansion_infor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OwnerSection extends StatelessWidget {
  final List<OwnerEntity> owners;
  final VoidCallback onAddOwner;
  final Function(OwnerEntity) onEditOwner;

  const OwnerSection({
    super.key,
    required this.owners,
    required this.onAddOwner,
    required this.onEditOwner,
  });

  String getListOwner(List<OwnerEntity> parties) {
    return parties.map((e) => e.name).join(", ");
  }

  @override
  Widget build(BuildContext context) {
    return CustomExpansionTitle(
      title: 'Bên A (nếu có)',
      selectText: getListOwner(owners),
      childBuilder: (onValueChanged) {
        return Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              separatorBuilder: (context, index) => SizedBox(height: 12.h,),
              itemCount: owners.length,
              itemBuilder: (context, index) {
                final ownerItem = owners[index];
                return CustomExpansionInfor(
                  ownerItem: ownerItem,
                  isEdit: true,
                  onEdit: (){
                    // TODO: Open edit owner
                    onEditOwner(ownerItem);
                  },
                );
              }
            ),
            SizedBox(height: 8.h,),
            CustomAdaptiveButton(
              isOpacity: true,
              text: 'Thêm chủ sở hữu',
              textColor: TextColors.textButtonPlain,
              backgroundColor: Colors.transparent,
              width: double.infinity,
              preffixWidget: Icon(
                Icons.add,
                size: 22.sp,
                color: IconColors.iconBrandPrimary
              ),
              onPressed: (){
                // TODO: Open add owner page
                onAddOwner();
              },
            ),
          ],
        );
      },
    );
  }
}