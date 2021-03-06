/*
   DEVELOPED BY: KAMLESH LAKHANI

*/

import 'package:flutter/services.dart';
import '../../import_package.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String labelText;
  final String? initialValue;
  final Widget? prefixIcon, suffixIcon;
  final TextInputType keyboardType;
  final FormFieldValidator<String?>? validator;
  final TextEditingController? controller;
  final ValueChanged<String?>? onChanged, onSaved;
  final int? maxLength, maxLines;
  final int minLines;
  final bool readOnly, addHint, enabled;
  final Function()? onTap;
  final InputBorder? border;
  final AutovalidateMode autoValidateMode;
  final BoxConstraints? suffixIconConstraints;
  final bool obscureText;

  const CustomTextFieldWidget({
    Key? key,
    required this.labelText,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    this.validator = Validator.validateEmpty,
    this.onChanged,
    this.onSaved,
    this.maxLength,
    this.maxLines = 1,
    this.minLines = 1,
    this.initialValue,
    this.readOnly = false,
    this.onTap,
    this.border,
    this.enabled = true,
    this.autoValidateMode = AutovalidateMode.onUserInteraction,
    this.addHint = false,
    this.suffixIconConstraints,
    this.obscureText = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onTap: onTap,
        readOnly: readOnly,
        initialValue: initialValue,
        keyboardType: keyboardType,
        autovalidateMode: autoValidateMode,
        controller: controller,
        validator: validator,
        onChanged: onChanged,
        minLines: minLines,
        maxLines: maxLines,
        onSaved: onSaved,
        enabled: enabled,
        obscureText: obscureText,
        inputFormatters: maxLength == null
            ? null
            : [
                LengthLimitingTextInputFormatter(maxLength),
                if (keyboardType == TextInputType.number)
                  FilteringTextInputFormatter.digitsOnly,
              ],
        decoration: InputDecoration(
            //filled: true,
            border: border,
            enabledBorder: border,
            alignLabelWithHint: maxLines == null,
            labelText: addHint ? null : ((controller?.text != null || !readOnly) ? labelText : null),
            hintText: addHint ? labelText : (readOnly ? labelText : null),
            errorStyle: AppTextStyle.errorTextFieldStyle,
            prefixIconConstraints: BoxConstraints(maxHeight: 16.w, maxWidth: 51.w),
            prefixIcon: prefixIcon == null ? null : SizedBox(width: 51.w, child: prefixIcon),
            suffixIcon: Container(padding: EdgeInsets.symmetric(horizontal: 10.w), child: suffixIcon),
            suffixIconConstraints: suffixIconConstraints ?? BoxConstraints(maxHeight: 40.h, maxWidth: 40.w)));
  }
}
