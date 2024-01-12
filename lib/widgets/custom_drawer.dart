// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/DrawerItemListView.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';
import 'package:responsive_dash_board/widgets/user_info_list_title.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: UserInfoListTitle(
                  image: Assets.imagesFrame2,
                  title: "Mahmoud Ali",
                  subtitle: "Mahmoudali321@gmail.com"),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 8,
              ),
            ),
            DrawerItemListView(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(children: [
                Expanded(child: SizedBox()),
                InActiveDrawerItem(
                    darawerItemModel: DarawerItemModel(
                        title: 'Setting system', image: Assets.imagesSetting2)),
                InActiveDrawerItem(
                    darawerItemModel: DarawerItemModel(
                        title: 'Logout account', image: Assets.imagesLogout)),
                SizedBox(height: 48)
              ]),
            )
          ],
        ));
  }
}
