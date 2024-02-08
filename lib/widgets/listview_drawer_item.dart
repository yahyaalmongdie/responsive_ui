import 'package:flutter/material.dart';
import 'package:responcive_dashboard/models/drawer_item_model.dart';
import 'package:responcive_dashboard/utils/app_images.dart';
import 'package:responcive_dashboard/widgets/drawer_item.dart';

class ListViewDrawerItem extends StatefulWidget {
  const ListViewDrawerItem({super.key});

  @override
  State<ListViewDrawerItem> createState() => _ListViewDrawerItemState();
}

class _ListViewDrawerItemState extends State<ListViewDrawerItem> {
  int activeIndex = 0;
  final List<DrawerItemModel> items = [
    DrawerItemModel(image: Assets.imagesDashboard, title: "Dashboard"),
    DrawerItemModel(image: Assets.imagesMytransaction, title: "My Transaction"),
    DrawerItemModel(image: Assets.imagesStatistics, title: "Statistics"),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: "Wallet Account"),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: "My Investments"),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
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
                  isActive: activeIndex == index,
                  drawerItemModel: items[index]),
            ),
          );
        });
  }
}
