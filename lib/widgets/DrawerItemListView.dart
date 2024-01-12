import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DarawerItemModel> items = [
    DarawerItemModel(title: 'Dashboard', image: Assets.imagesCategory2),
    DarawerItemModel(title: 'My Transaction', image: Assets.imagesConvertCard),
    DarawerItemModel(title: 'Statistics', image: Assets.imagesGraph),
    DarawerItemModel(title: 'Wallet Account', image: Assets.imagesWallet2),
    DarawerItemModel(title: 'My Investments', image: Assets.imagesChart2),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (activeIndex != index) {
            setState(() {
              activeIndex = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: DrawerItem(
            darawerItemModel: items[index],
            isActive: activeIndex == index,
          ),
        ),
      ),
    );
  }
}
