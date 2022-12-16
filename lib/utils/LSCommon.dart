import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';

InputDecoration inputDecoration(BuildContext context, {String? hint, Widget? suffixIcon, Widget? prefixIcon, String? labelText}) {
  return InputDecoration(
    labelStyle: TextStyle(color: Theme.of(context).textTheme.headline6!.color),
    contentPadding: EdgeInsets.only(left: 12, bottom: 8, top: 8, right: 8),
    hintText: hint,
    labelText: labelText,
    hintStyle: secondaryTextStyle(),
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
    enabledBorder: OutlineInputBorder(
      borderRadius: radius(defaultRadius),
      borderSide: BorderSide(
        // color:
      //  appStore.isDarkModeOn ? viewLineColor.withOpacity(0.4) : viewLineColor, 
      //  width: 1.0
       ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: radius(defaultRadius),
      borderSide: BorderSide(color: Colors.red, width: 1.0),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: radius(defaultRadius),
      borderSide: BorderSide(color: Colors.red, width: 1.0),
    ),
    errorMaxLines: 2,
    errorStyle: primaryTextStyle(color: Colors.red, size: 12),
    focusedBorder: OutlineInputBorder(
      borderRadius: radius(defaultRadius),
      borderSide: BorderSide(
        // color: LSColorPrimary,
         width: 1.0),
    ),
  );
}
