import 'dart:io';
import 'dart:ui';
import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_appbar_sub.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class EditImagesPage extends StatefulWidget {
  final List<File> images;
  const EditImagesPage({super.key, required this.images});

  @override
  State<EditImagesPage> createState() => _EditImagesPageState();
}

class _EditImagesPageState extends State<EditImagesPage> {
  // TODO: Save images
  void _onSaveImages() {
    context.pop(widget.images);
  }

  // TODO: Delete images
  void _onDeleteImages(int index){
    setState(() {
      widget.images.removeAt(index);
    });
  }

  // TODO: Replace image
  void _onReplaceImage(int index) async{
    final XFile? pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if(pickedFile != null){
      setState(() {
        widget.images[index] = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarSub(
        iconLeading: Icons.close,
        titleLeading: 'Chỉnh sửa ảnh',
        onLeading: () => context.pop(),
        isAction: true,
        titleAction: 'Lưu',
        onAction: (){
          // TODO: Save images
          _onSaveImages();
        },
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(16.w),
        child: widget.images.isEmpty 
          ? Center(
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
        
        : ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: widget.images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6.r),
                      child: Image.file(
                        widget.images[index], 
                        height: 600.h, 
                        width: double.infinity,
                        fit: BoxFit.cover,
                      )
                    ),
                    Positioned(
                      top: 12.h,
                      right: 12.w,
                      child: CustomAdaptiveTapEffect(
                        onPressed: () {
                          //TODO: Delete image
                          _onDeleteImages(index);
                        },
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: BackgroundColors.backgroundErrorPrimary,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(7.r),
                            child: Icon(
                              Icons.close,
                              size: 18.sp,
                              color: IconColors.iconErrorOnerror,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 16.h,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: CustomAdaptiveTapEffect(
                          onPressed: () {
                            //TODO: Replace image
                            _onReplaceImage(index);
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6.r),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 2.w, 
                                sigmaY: 2.h,
                              ),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: BackgroundColors.backgroundDefaultPrimary.withValues(alpha: 0.7),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.r),
                                  child: Text(
                                    'Đổi ảnh',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17.sp,
                                      color: TextColors.textDefaultPrimary
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
        ),
      )
    );
  }
}