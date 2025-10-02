import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormatToolbar extends StatefulWidget {
  final TextEditingController controller;

  const TextFormatToolbar({super.key, required this.controller});

  @override
  _TextFormatToolbarState createState() => _TextFormatToolbarState();
}

class _TextFormatToolbarState extends State<TextFormatToolbar> {
  bool isBold = false;
  bool isItalic = false;
  bool isUnderline = false;
  bool isBulleted = false;
  bool isNumbered = false;
  TextAlign textAlign = TextAlign.left;

  void _toggleBold() {
    setState(() => isBold = !isBold);
    _updateText();
  }

  void _toggleItalic() {
    setState(() => isItalic = !isItalic);
    _updateText();
  }

  void _toggleUnderline() {
    setState(() => isUnderline = !isUnderline);
    _updateText();
  }

  void _toggleBulleted() {
    setState(() => isBulleted = !isBulleted);
    _insertBullet();
  }

  void _toggleNumbered() {
    setState(() => isNumbered = !isNumbered);
    _insertNumbered();
  }

  void _changeAlign(TextAlign align) {
    setState(() => textAlign = align);
  }

  void _insertBullet() {
    final cursorPos = widget.controller.selection.base.offset;
    final text = widget.controller.text;
    final newText = text.replaceRange(cursorPos, cursorPos, "• ");
    widget.controller.text = newText;
    widget.controller.selection = TextSelection.fromPosition(
      TextPosition(offset: cursorPos + 2),
    );
  }

  void _insertNumbered() {
    final cursorPos = widget.controller.selection.base.offset;
    final text = widget.controller.text;
    final newText = text.replaceRange(cursorPos, cursorPos, "1. ");
    widget.controller.text = newText;
    widget.controller.selection = TextSelection.fromPosition(
      TextPosition(offset: cursorPos + 3),
    );
  }

  void _updateText() {
    
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Text Align
          IconButton(
            icon: const Icon(Icons.format_align_left),
            color: textAlign == TextAlign.left 
              ? IconColors.iconBrandPrimary 
              : IconColors.iconDefaultSecondary.withValues(alpha: 0.5),
            onPressed: () => _changeAlign(TextAlign.left),
          ),
          IconButton(
            icon: const Icon(Icons.format_align_center),
            color: textAlign == TextAlign.center 
              ? IconColors.iconBrandPrimary 
              : IconColors.iconDefaultSecondary.withValues(alpha: 0.5),
            onPressed: () => _changeAlign(TextAlign.center),
          ),
          IconButton(
            icon: const Icon(Icons.format_align_right),
            color: textAlign == TextAlign.right 
              ? IconColors.iconBrandPrimary 
              : IconColors.iconDefaultSecondary.withValues(alpha: 0.5),
            onPressed: () => _changeAlign(TextAlign.right),
          ),
          IconButton(
            icon: const Icon(Icons.format_align_justify),
            color: textAlign == TextAlign.justify 
              ? IconColors.iconBrandPrimary 
              : IconColors.iconDefaultSecondary.withValues(alpha: 0.5),
            onPressed: () => _changeAlign(TextAlign.justify),
          ),
          SizedBox(width: 16.w),

          // Font Style
          IconButton(
            icon: Icon(Icons.format_bold, color: isBold 
              ? IconColors.iconBrandPrimary 
              : IconColors.iconDefaultSecondary.withValues(alpha: 0.5)),
            onPressed: _toggleBold,
          ),
          IconButton(
            icon: Icon(Icons.format_italic, color: isItalic 
              ? IconColors.iconBrandPrimary 
              : IconColors.iconDefaultSecondary.withValues(alpha: 0.5)),
            onPressed: _toggleItalic,
          ),
          IconButton(
            icon: Icon(Icons.format_underline, color: isUnderline 
              ? IconColors.iconBrandPrimary 
              : IconColors.iconDefaultSecondary.withValues(alpha: 0.5)),
            onPressed: _toggleUnderline,
          ),
          SizedBox(width: 16.w),

          // Lists
          IconButton(
            icon: Icon(Icons.format_list_bulleted, color: isBulleted 
              ? IconColors.iconBrandPrimary 
              : IconColors.iconDefaultSecondary.withValues(alpha: 0.5)),
            onPressed: _toggleBulleted,
          ),
          IconButton(
            icon: Icon(Icons.format_list_numbered, color: isNumbered 
              ? IconColors.iconBrandPrimary 
              : IconColors.iconDefaultSecondary.withValues(alpha: 0.5)),
            onPressed: _toggleNumbered,
          ),
        ],
      ),
    );
  }
}
