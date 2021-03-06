import 'package:flutter/material.dart';
import 'package:lmsadminpanle/utils/constants/color_manager.dart';
import 'package:lmsadminpanle/utils/constants/values_manager.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintName;
  final TextInputType inputType;
  final bool isEnable;
  final int inputLines;
  final IconData icon;
  final Color color;
  final bool isPass;
  final bool isLarge;
  late bool passwordVisibility;

  CustomTextField({
    Key? key,
    this.controller,
    this.hintName,
    this.isPass = false,
    this.passwordVisibility = false,
    required this.isLarge,
    this.inputType = TextInputType.text,
    this.isEnable = true,
    this.inputLines = 1,
    required this.icon,
    this.color = ColorManager.whiteColor,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: widget.isLarge ? AppPadding.p20 : AppPadding.p6),
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.isPass ? !widget.passwordVisibility : false,
        enabled: widget.isEnable,
        keyboardType: widget.inputType,
        maxLines: widget.inputLines,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter ${widget.hintName}';
          }
          return null;
        },
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s22)),
            borderSide: BorderSide(color: ColorManager.primaryColor),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s22)),
            borderSide: BorderSide(color: ColorManager.primaryColor),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s22)),
            borderSide: BorderSide(color: ColorManager.redColor),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s22)),
            borderSide: BorderSide(color: ColorManager.redColor),
          ),
          disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s22)),
            borderSide: BorderSide(color: ColorManager.primaryColor),
          ),
          prefixIcon: Icon(widget.icon, color: ColorManager.primaryColor),
          suffixIcon: widget.isPass
              ? IconButton(
                  icon: Icon(
                    widget.passwordVisibility
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: ColorManager.primaryColor,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.passwordVisibility = !widget.passwordVisibility;
                    });
                  },
                )
              : const SizedBox.shrink(),
          hintText: widget.hintName,
          hintStyle:
              TextStyle(fontSize: widget.isLarge ? AppSize.s12 : AppSize.s10),
          fillColor: widget.color,
          filled: true,
        ),
      ),
    );
  }
}
