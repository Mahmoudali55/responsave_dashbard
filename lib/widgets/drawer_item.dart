import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/style_app.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.darawerItemModel, required this.isActive});
  final DarawerItemModel darawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(darawerItemModel: darawerItemModel)
        : InActiveDrawerItem(darawerItemModel: darawerItemModel);
  }
}
