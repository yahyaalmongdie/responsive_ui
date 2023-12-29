import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responcive_dashboard/models/drawer_item_model.dart';
import 'package:responcive_dashboard/utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleMedium16,
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: SvgPicture.asset(drawerItemModel.image),
        title: Text(
          drawerItemModel.title,
          style: AppStyles.styleBold16,
        ),
        trailing: Container(
          width: 3.27,
          decoration: const BoxDecoration(color: Color(0xff4eb7f2)),
        ));
  }
}
