import 'package:flutter/material.dart';

import '../../configs/themes/app_colors.dart';
import '../../configs/themes/ui_parameters.dart';

class ContentArea extends StatelessWidget {
  const ContentArea({Key? key, required this.child, this.addPadding = true, })
      : super(key: key);

  final Widget child;
  final bool addPadding;

  @override
  Widget build(BuildContext context) {
    var kMobileScreenPadding2 = kMobileScreenPadding;
    return Material(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(20)) ,
      clipBehavior: Clip.hardEdge,
      type: MaterialType.transparency,
      child: Ink(
        
        decoration: BoxDecoration(
          color: customScaffoldColor(context),
         
        ),
        padding: addPadding
            ?  EdgeInsets.only(
                top: kMobileScreenPadding,
                left: kMobileScreenPadding2,
                right: kMobileScreenPadding)
            : EdgeInsets.zero,
        child: child,
      ),
    );
  }
}
