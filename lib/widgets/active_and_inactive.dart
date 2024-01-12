import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/style_app.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.darawerItemModel,
  });

  final DarawerItemModel darawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(darawerItemModel.title, style: AppStyle.styleRegular16),
      leading: SvgPicture.asset(darawerItemModel.image),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.darawerItemModel,
  });

  final DarawerItemModel darawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(darawerItemModel.title, style: AppStyle.styleBold16),
      leading: SvgPicture.asset(darawerItemModel.image),
      trailing: Container(
        width: 3.27,
        decoration: BoxDecoration(color: Color(0xFF4EB7F2)),
      ),
    );
  }
}
