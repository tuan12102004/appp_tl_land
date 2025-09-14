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
                  hintText: "tên của bạn",
                  controller: _nameController,
                  keyboardType: TextInputType.name,
                ),
                CustomInputField(
                  label: "Email",
                  hintText: "abcdz@gmail.com",
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
    return  Padding(
      padding:  EdgeInsets.only(left: 16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Thành phố",style: TextStyle(
              fontSize: 17.sp ,fontWeight: FontWeight.w400
          )),
          Container(
            width: 361.w,
            height: 44.h,
            margin: EdgeInsets.only(top: 8.h),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff000000).withOpacity(0.2)),
              borderRadius: BorderRadius.circular(8),
            ),
            child:  Padding(
              padding:  EdgeInsets.only(left: 16.w, right: 16.w),
              child: DropdownButtonFormField<String>(
                isExpanded: true,
                icon: Icon(Icons.expand_more),
                value: selectedCity,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                ),
                hint: Text("Hồ chí minh",style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400
                ),),
                items: _cityList.map((e) {
                  return DropdownMenuItem<String>(
                      value: e,
                      child: Text(e,style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400
                      ),));
                },).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCity = value;
                  });
                },),
            ),
          )
        ],
      ),
    );
  }
  Widget _buildWardDropdown() {
    return  Padding(
      padding:  EdgeInsets.only(left: 16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Phường",style: TextStyle(
              fontSize: 17.sp ,fontWeight: FontWeight.w400
          )),
          Container(
            width: 361.w,
            height: 44.h,
            margin: EdgeInsets.only(top: 8.h),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff000000).withOpacity(0.2)),
              borderRadius: BorderRadius.circular(8),
            ),
            child:  Padding(
              padding:  EdgeInsets.only(left: 16.w, right: 16.w),
              child: DropdownButtonFormField<String>(
                value: selectedWard,
                icon: Icon(Icons.expand_more),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                ),
                hint: Text("Quận 1",style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400
                ),),
                items: _wardList.map((e) {
                  return DropdownMenuItem<String>(
                      value: e,
                      child: Text(e,style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400
                      ),));
                },).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedWard = value;
                  });
                },),
            ),
          )
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
        margin: EdgeInsets.only(top: 89.h),
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
            style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
          ),
          Container(
            width: 361.w,
            height: 44.h,
            margin: EdgeInsets.only(top: 8.h),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff000000).withOpacity(0.2)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(12.w, 11.h, 16.w, 11.h),
              child: TextField(
                keyboardType: keyboardType,
                controller: controller,
                decoration: InputDecoration(
                  hintText: hintText,
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
