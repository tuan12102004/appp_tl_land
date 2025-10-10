// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';
import 'dart:typed_data';

import 'package:app_tl_land_3212/core/utils/pick_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import 'package:app_tl_land_3212/common/enums/snackbar_type.dart';
import 'package:app_tl_land_3212/common/widgets/custom_adaptive_button.dart';
import 'package:app_tl_land_3212/common/widgets/custom_adaptive_tap_effect.dart';
import 'package:app_tl_land_3212/common/widgets/custom_bottom_bar_button.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/utils/show_app_snackbar.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_appbar_sub.dart';
import 'package:app_tl_land_3212/feature/home/presentation/pages/home_page.dart';
import 'package:path_provider/path_provider.dart';

class AddImagesPage extends StatefulWidget {
  final RealEstateEntity realEstateEntity;
  const AddImagesPage({
    super.key,
    required this.realEstateEntity,
  });

  @override
  State<AddImagesPage> createState() => _AddImagesPageState();
}

class _AddImagesPageState extends State<AddImagesPage> {
  List<File> _images = [];

  // TODO: Open camera or gallery
  Future<void> _onPickImage(ImageSource source) async {
    final Uint8List? bytes = await pickImage(context, imageSource: source);
    if (bytes != null) {
      final tempDir = await getTemporaryDirectory();
      final file = File('${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}.jpg');
      await file.writeAsBytes(bytes);

      setState(() => _images.add(file));
    }
  }

  // TODO: Post real estate
  void _onPostRealEstate(){
    if (_images.isEmpty) {
      showAppSnackbar(
        context,
        snackbarType: SnackbarType.info,
        content: "Vui lòng thêm ít nhất 1 hình ảnh",
      );
      return;
    }
    // context.go('/');
    
    context.push(
      '/home/detail', 
      extra: {
        'item': widget.realEstateEntity
      }
    );
  }

  // TODO: Open edit images
  void _onOpenEditImages() async {
    final updatedImages = await context.push<List<File>>(
      '/post/edit-images',
      extra: {
        'images': _images
      }
    );
    if (updatedImages != null && updatedImages != _images) {
      setState(() {
        _images = updatedImages;
      });
    }
  }

  // TODO: Delete image
  void _onDeleteImages(int index){
    setState(() {
      _images.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarSub(
        titleLeading: 'Hình ảnh',
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(16.w),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            _images.isEmpty
              ? Padding(
                  padding: EdgeInsets.all(16.h),
                  child: Text(
                    "Không có ảnh",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 17.sp,
                      fontStyle: FontStyle.italic,
                      color: TextColors.textDefaultTertiary.withValues(alpha: 0.3),
                    ),
                  ),
                )
              : Expanded(
                child: _images.length == 1
                  ? GestureDetector(
                      onTap:() {
                        // TODO: Open edit image
                        _onOpenEditImages();
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6.r),
                        child: Image.file(
                          _images[0],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    )
                  : GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // 2 cột cho >=2 ảnh
                        crossAxisSpacing: 12.w,
                        mainAxisSpacing: 12.h,
                      ),
                      itemCount: _images.length > 4 ? 4 : _images.length,
                      itemBuilder: (context, index) {
                        if (index == 3 && _images.length > 4) {
                          // Ảnh thứ 4 + overlay số còn lại
                          return Stack(
                            fit: StackFit.expand,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(6.r),
                                child: Image.file(
                                  _images[index], 
                                  fit: BoxFit.cover,
                                )
                              ),
                              GestureDetector(
                                onTap:() {
                                  // TODO: Open edit image
                                  _onOpenEditImages();
                                },
                                child: Container(
                                  color: SpecialColors.specialOverlayDefault.withValues(alpha: 0.5),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "+${_images.length - 4}",
                                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 34.sp,
                                      color: TextColors.textBrandOnbrand
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        } else {
                          return Stack(
                            fit: StackFit.expand,
                            children: [
                              GestureDetector(
                                onTap:() {
                                  // TODO: Open edit image
                                  _onOpenEditImages();
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6.r),
                                  child: Image.file(
                                    _images[index], 
                                    fit: BoxFit.cover,
                                  )
                                ),
                              ),
                              Positioned(
                                top: 4.h,
                                right: 4.w,
                                child: CustomAdaptiveTapEffect(
                                  onPressed: (){
                                    // TODO: Xóa ảnh
                                    _onDeleteImages(index);
                                  },
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: SpecialColors.specialOverlayDefault.withValues(alpha: 0.5),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.close,
                                      size: 18.sp,
                                      color: IconColors.iconBrandOnbrand,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }
                      },
                    ),
                  ),

            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomAdaptiveButton(
                  text: "Chụp ảnh",
                  textColor: TextColors.textButtonSecondary,
                  preffixWidget: Icon(
                    Icons.camera_alt,
                    color: IconColors.iconButtonSecondary,
                    size: 22.sp,
                  ),
                  backgroundColor: BackgroundColors.backgroundButtonSecondary,
                  onPressed: (){
                    // TODO: Open camera
                    _onPickImage(ImageSource.camera);
                  }
                ),
                CustomAdaptiveButton(
                  text: "Tải ảnh lên",
                  textColor: TextColors.textButtonSecondary,
                  preffixWidget: Icon(
                    Icons.image,
                    color: IconColors.iconButtonSecondary,
                    size: 22.sp,
                  ),
                  backgroundColor: BackgroundColors.backgroundButtonSecondary,
                  onPressed: (){
                    // TODO: Open gallery
                    _onPickImage(ImageSource.gallery);
                  }
                )
              ],
            ),
            SizedBox(height: _images.length == 1
              ? 180.h 
              : _images.length == 2
                ? 380.h 
                : 180.h
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBarButton(
        onPressed: () {
          // TODO: Post real estate
          _onPostRealEstate();
        },
        title: _images.isEmpty ? "Đăng tin" : "Gửi yêu cầu đăng tin",
        backgroundColor: BackgroundColors.backgroundBrandPrimary,
        isBorderTop: false,
        isBoxShadowTop: false,
      ),
    );
  }
}
