import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangeImformation extends StatefulWidget {
  const ChangeImformation({super.key});

  @override
  State<ChangeImformation> createState() => _ChangeImformationState();
}

class _ChangeImformationState extends State<ChangeImformation> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }
final List<String> _cityList = [
  "Hà Nội",
  "Hồ Chí Minh",
  "Đà Nẵng",
  "Hải Phòng",
  "Cần Thơ",
];
final List<String> _wardList = [
  "Quận 1",
  "Quận 2",
  "Quận 3",
  "Quận 4",
  "Quận 5",
];
String? selectedCity;
String? selectedWard;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Hồ sơ của bạn"),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileImagePicker(),
                SizedBox(height: 16.h,),
                CustomInputField(
                  label: "Họ và tên",
                  hintText: "Đinh Trọng Phúc",
                  controller: _nameController,
                  keyboardType: TextInputType.name,
                ),
                CustomInputField(
                  label: "Email",
                  hintText: "trongphuc19@gmail.com",
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                ),
                CustomInputField(
                  label: "Số điện thoại",
                  hintText: "03774614444",
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                ),
                _buildCityDropdown(),
                SizedBox(height: 14.h,),
                _buildWardDropdown(),
                UpdateButton()
              ],
            )
          ],
        ),
      ),
    );
  }
  Widget _buildCityDropdown() {
    return Padding(
      padding: EdgeInsets.only(left: 16.0.w, right: 16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Thành phố",
            style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 8.h),
          DropdownButtonFormField<String>(
            isExpanded: true,
            icon: Icon(Icons.expand_more),
            value: _cityList.contains(selectedCity) ? selectedCity : null,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Colors.black.withValues(alpha: 0.2),
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Colors.black.withValues(alpha: 0.2),
                  width: 1,
                ),
              ),
            ),
            hint: Text(
              "Hồ Chí Minh",
              style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400, color: Color(0xff000000)),
            ),
            items: _cityList.map((e) {
              return DropdownMenuItem<String>(
                value: e,
                child: Text(
                  e,
                  style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
                ),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedCity = value;
              });
            },
          ),
        ],
      ),
    );
  }
  Widget _buildWardDropdown() {
    return Padding(
      padding: EdgeInsets.only(left: 16.0.w, right: 16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Phường",
            style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 8.h),
          DropdownButtonFormField<String>(
            isExpanded: true,
            icon: Icon(Icons.expand_more),
            value: _wardList.contains(selectedWard) ? selectedWard : null,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Colors.black.withValues(alpha: 0.2),
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Colors.black.withValues(alpha: 0.2),
                  width: 1,
                ),
              ),
            ),
            hint: Text(
              "Quận 1",
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),
            ),
            items: _wardList.map((e) {
              return DropdownMenuItem<String>(
                value: e,
                child: Text(
                  e,
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedWard = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
class UpdateButton extends StatelessWidget {
  const UpdateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.h,
        width: 361.w,
        margin: EdgeInsets.fromLTRB(14.w, 20.h, 14.w, 20.h),
        decoration: BoxDecoration(
          color: Color(0xff179BE0),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
            child: Text("Cập nhật",style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ))
        )
    );
  }
}
class ProfileImagePicker extends StatelessWidget {
  const ProfileImagePicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 90.w,
        height: 90.h,
        margin: EdgeInsets.only(top: 55.h),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(45.sp),
              child: Image.asset(
                "assets/anime.png",
                fit: BoxFit.cover,
                height: 80.h,
                width: 80.w,
              ),
            ),
            Positioned(
              bottom: 10.h,
              right: 10.w,
              child: Container(
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff179BE0),
                ),
                child: Icon(
                  Icons.edit,
                  size: 20.sp,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key,
    required this.label,
    required this.hintText,
    required this.keyboardType,
    this.controller,
  });

  final String label;
  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 0.h, 16.w, 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400, color: Color(0xff000000)),
          ),
          Container(
            width: 361.w,
            height: 44.h,
            margin: EdgeInsets.only(top: 8.h),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff000000).withValues(alpha: 0.2)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextField(
              keyboardType: keyboardType,
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                hintStyle: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000)
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 11.h), // canh chuẩn
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
             Icons.arrow_back_ios, color: Color(0xff179BE0),size:24.sp
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff179BE0),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

