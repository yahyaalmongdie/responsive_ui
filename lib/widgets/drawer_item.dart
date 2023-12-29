import 'package:flutter/material.dart';
import 'package:responcive_dashboard/models/drawer_item_model.dart';
import 'package:responcive_dashboard/widgets/active_and_inactive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel, required this.isActive});

  final bool isActive;

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return isActive? ActiveDrawerItem(drawerItemModel: drawerItemModel,): InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
