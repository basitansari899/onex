import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:onex/app/theme/colors.dart';

class TextFieldData {
  TextFieldData({
    this.isPassword = false,
    this.validator,
    this.textCapitalization = TextCapitalization.sentences,
    this.maxLength,
    this.isClear = false,
    this.onFieldSubmit,
    this.keyboardType = TextInputType.text,
    this.onChange,
    this.optionPosition = const [0],
    String? initValue,
    List<TextInputFormatter> formatters = const [],
  })  : controller = TextEditingController(text: initValue),
        _formatters =
            isPassword || textCapitalization != TextCapitalization.sentences || keyboardType != TextInputType.text
                ? formatters
                : [...formatters, CapitalizeText()] {
    if (initValue != null) _counterText.value = initValue.length;
  }

  final bool isPassword;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;
  final TextCapitalization textCapitalization;
  final int? maxLength;
  final List<TextInputFormatter> _formatters;
  final bool isClear;
  final TextEditingController controller;
  final errorText = ''.obs;
  final passwordVisible = false.obs;
  final Function(String)? onChange;
  final Function(String)? onFieldSubmit;
  List<int> optionPosition;

  final _counterText = 0.obs;

  String? get error => errorText.value.nullIfEmpty;

  bool get obscureText => isPassword && !passwordVisible.value;

  String get textInField => controller.text;

  List<TextInputFormatter> get formatters => _formatters;

  int get counterText => _counterText.value;

  set counterText(int newLength) => _counterText.value = newLength;

  set textInField(String newText) {
    controller
      ..text = newText
      ..selection = TextSelection.collapsed(offset: newText.length);
  }

  void togglePasswordVisible() {
    passwordVisible.value = !passwordVisible.value;
  }
}

class CustomTextField extends StatelessWidget {
  final String hint;
  final TextFieldData fieldData;
  final int maxLines;
  final Widget? prefix;
  final Widget? suffix;
  final String? label;
  final bool isEnabled;
  final Color? filledColor;
  final bool showCounterText;
  final VoidCallback? onTapAction;
  final double errorHeight;
  final bool enableInteractiveSelection;
  final FocusNode? focusNode;
  final String? infoLabel;
  final TextAlign textAlign;
  final TextStyle? textStyle;
  final TextStyle? hintTextStyle;
  final TextInputAction textInputAction;
  final Color? cursorColor;
  final EdgeInsetsGeometry? contentPadding;

  const CustomTextField({
    super.key,
    required this.hint,
    required this.fieldData,
    this.maxLines = 1,
    this.prefix,
    this.suffix,
    this.label,
    this.isEnabled = true,
    this.filledColor = AppColors.textfeildFill,
    this.showCounterText = true,
    this.onTapAction,
    this.errorHeight = 1,
    this.enableInteractiveSelection = true,
    this.focusNode,
    this.infoLabel,
    this.textAlign = TextAlign.left,
    this.textStyle,
    this.hintTextStyle,
    this.textInputAction = TextInputAction.next,
    this.cursorColor,
    this.contentPadding,
  });

  OutlineInputBorder get _border => OutlineInputBorder(
        borderRadius: isEnabled ? BorderRadius.circular(14) : BorderRadius.circular(14),
        borderSide: BorderSide(color: isEnabled ? Colors.transparent : AppColors.borderColor),
      );

  OutlineInputBorder get _borderUnSelected => OutlineInputBorder(
        borderRadius: isEnabled ? BorderRadius.circular(14) : BorderRadius.circular(14),
        borderSide: BorderSide(color: AppColors.borderColor),
      );

  Color get _filledColor {
    return isEnabled ? filledColor ?? Colors.white : Colors.white;
  }

  TextStyle? get _textStyle {
    if (!isEnabled) {
      return Get.textTheme.bodyMedium?.copyWith(
        color: AppColors.black,
        fontWeight: FontWeight.w400,
      );
    }

    if (textStyle != null) return textStyle;

    return Get.textTheme.bodyMedium?.copyWith(
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(textFieldBuilder);
  }

  @protected
  Widget textFieldBuilder() {
    return TextFormField(
      textAlign: textAlign,
      textCapitalization: fieldData.textCapitalization,
      controller: fieldData.controller,
      validator: fieldData.validator,
      obscureText: fieldData.obscureText,
      keyboardType: fieldData.keyboardType,
      maxLines: maxLines,
      maxLength: fieldData.maxLength,
      inputFormatters: fieldData.formatters,
      readOnly: !isEnabled,
      onTap: onTapAction,
      onFieldSubmitted: (text) {
        if (textInputAction == TextInputAction.next) {
          focusNode?.nextFocus();
        } else if (textInputAction == TextInputAction.done) {
          focusNode?.unfocus();
        }
        if (fieldData.onFieldSubmit != null) fieldData.onFieldSubmit!(text);
      },
      onChanged: (text) {
        fieldData.counterText = text.length;
        if (fieldData.onChange != null) fieldData.onChange!(text);
      },
      enableInteractiveSelection: enableInteractiveSelection,
      focusNode: focusNode,
      style: _textStyle,
      decoration: InputDecoration(
        errorStyle: TextStyle(height: errorHeight),
        labelText: label,
        hintText: hint,
        labelStyle: Get.textTheme.bodyMedium?.copyWith(
          color: AppColors.placeholderTextColor,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        hintStyle: hintTextStyle?? Get.textTheme.bodySmall?.copyWith(
          color: AppColors.placeholderTextColor,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        floatingLabelStyle: const TextStyle(color: AppColors.placeholderTextColor),
        fillColor: _filledColor,
        filled: true,
        errorText: fieldData.error,
        errorMaxLines: 2,
        prefixIcon: prefix,
        prefixIconConstraints: const BoxConstraints(),
        suffix: suffix != null ? null : const SizedBox(width: 15),
        suffixIcon: fieldData.isPassword
            ? IconButton(
                icon: Icon(
                  fieldData.passwordVisible.value ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                  color: Colors.grey[700],
                  size: 20,
                ),
                onPressed: fieldData.togglePasswordVisible,
              )
            : fieldData.isClear
                ? IconButton(
                    icon: Icon(
                      Icons.close,
                      size: 20,
                      color: Colors.grey[700],
                    ),
                    onPressed: () {
                      fieldData.controller.clear();
                      if (fieldData.onChange != null) {
                        fieldData.onChange!('');
                      }
                    },
                  )
                : suffix,
        border: OutlineInputBorder(),
        contentPadding: contentPadding ?? const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        focusedBorder: _border,
        enabledBorder: _borderUnSelected,
        counterText: showCounterText ? null : '',
      ),
      textInputAction: textInputAction,
    );
  }
}

class CapitalizeText extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: toBeginningOfSentenceCase(newValue.text, 'en') ?? newValue.text,
      selection: newValue.selection,
    );
  }
}

extension NullableStringExtensions on String? {
  String? get nullIfEmpty => this?.isEmpty == true ? null : this;

  String get orEmpty => this == null ? '' : this!;
}
