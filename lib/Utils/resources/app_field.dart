import 'package:flutter/material.dart';
import 'package:hospitall/Utils/resources/app_theme.dart';

class CustomAppFormField extends StatefulWidget {
  final double? height;
  final double? width;
  final double? fontsize;
  final FontWeight? fontweight;
  final bool containerBorderCondition;
  final String texthint;
  final String? errorText;
  final TextEditingController? controller;
  final FormFieldValidator? validator;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final TapRegionCallback? onTapOutside;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onFieldSubmitted;
  final bool obscureText;
  final double? cursorHeight;
  final TextAlign textAlign;
  final Widget? prefix;
  final Widget? suffix;
  final bool? prefixIcon;
  final bool? suffixIcon;
  final Color? prefixIconColor;
  final Color? suffixIconColor;
  final Color? cursorColor;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final String? errorStyle;
  final String? prefixImge;
  final InputBorder? focusedErrorBorder;
  final InputBorder? errorBorder;
  final bool? readOnly;
  final int? lines;

  const CustomAppFormField({
    super.key,
    this.containerBorderCondition = false,
    required this.texthint,
    required this.controller,
    this.prefixImge,
    this.validator,
    this.height,
    this.width,
    this.obscureText = false,
    this.onChanged,
    this.onTap,
    this.onTapOutside,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.cursorHeight,
    this.textAlign = TextAlign.start,
    this.prefix,
    this.suffix,
    this.prefixIcon,
    this.suffixIcon,
    this.prefixIconColor,
    this.suffixIconColor,
    this.fontweight,
    this.fontsize,
    this.hintStyle,
    this.errorText,
    this.style,
    this.errorStyle,
    this.errorBorder,
    this.focusedErrorBorder,
    this.cursorColor,
    this.readOnly,
    this.lines,
  });

  @override
  State<CustomAppFormField> createState() => _CustomAppFormFieldState();
}

class _CustomAppFormFieldState extends State<CustomAppFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height ?? 64,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(color: AppTheme.appColor),
          color: const Color(0xffF1F4FF),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        maxLines: widget.lines ?? 1,
        readOnly: widget.readOnly ?? false,
        controller: widget.controller,
        cursorColor: AppTheme.appColor,
        cursorHeight: 25,
        textAlign: TextAlign.start,
        cursorWidth: 2,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
            prefixIconConstraints: const BoxConstraints(
              minWidth: 50,
            ),
            border: InputBorder.none,
            contentPadding:
                const EdgeInsets.only(left: 20, top: 16, bottom: 8, right: 8),
            hintText: widget.texthint,
            hintStyle: TextStyle(
                color: AppTheme.lightText,
                fontSize: 16,
                fontWeight: FontWeight.w500),
            isDense: false),
      ),
    );
  }
}

class CustomAppPasswordfield extends StatefulWidget {
  final double? height;
  final double? width;
  final bool containerBorderCondition;
  final String texthint;
  final String? errorText;
  final TextEditingController? controller;
  final FormFieldValidator? validator;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final TapRegionCallback? onTapOutside;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onFieldSubmitted;
  final double? cursorHeight;
  final TextAlign textAlign;
  final Widget? prefix;
  final Widget? suffix;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? prefixIconColor;
  final Color? suffixIconColor;
  final Color? cursorColor;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final String? prefixImge;
  final TextStyle? errorStyle;
  final InputBorder? focusedErrorBorder;
  final InputBorder? errorBorder;

  const CustomAppPasswordfield(
      {super.key,
      this.containerBorderCondition = false,
      required this.texthint,
      required this.controller,
      this.validator,
      this.height,
      this.width,
      this.onChanged,
      this.onTap,
      this.onTapOutside,
      this.onEditingComplete,
      this.onFieldSubmitted,
      this.cursorHeight,
      this.textAlign = TextAlign.start,
      this.prefix,
      this.suffix,
      this.prefixIcon,
      this.suffixIcon,
      this.prefixIconColor,
      this.suffixIconColor,
      this.errorText,
      this.hintStyle,
      this.cursorColor,
      this.style,
      this.errorStyle,
      this.errorBorder,
      this.focusedErrorBorder,
      this.prefixImge});

  @override
  State<CustomAppPasswordfield> createState() => _CustomAppPasswordfieldState();
}

class _CustomAppPasswordfieldState extends State<CustomAppPasswordfield> {
  bool _obscureText = true;

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.height ?? 64,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            border: Border.all(color: AppTheme.appColor),
            color: const Color(0xffF1F4FF),
            borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          controller: widget.controller,
          cursorColor: AppTheme.appColor,
          cursorHeight: 25,
          textAlign: TextAlign.start,
          cursorWidth: 2,
          keyboardType: TextInputType.name,
          obscureText: _obscureText,
          decoration: InputDecoration(
              prefixIconConstraints: const BoxConstraints(
                minWidth: 50,
              ),
              border: InputBorder.none,
              contentPadding:
                  const EdgeInsets.only(left: 20, top: 16, bottom: 8, right: 8),
              hintText: widget.texthint,
              hintStyle: TextStyle(
                  color: AppTheme.lightText,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
              isDense: false,
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                  ),
                  child: Icon(
                    _obscureText
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: AppTheme.appColor,
                  ),
                ),
              )),
        ));
  }
}
