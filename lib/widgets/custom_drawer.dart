import 'package:flutter/material.dart';
import 'package:responcive_dashboard/models/drawer_item_model.dart';
import 'package:responcive_dashboard/models/user_info_model.dart';
import 'package:responcive_dashboard/utils/app_images.dart';
import 'package:responcive_dashboard/widgets/active_and_inactive_item.dart';
import 'package:responcive_dashboard/widgets/listview_drawer_item.dart';
import 'package:responcive_dashboard/widgets/user_info_listtile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
        const SliverToBoxAdapter(
          child: UserInfoListTile(

            userInfoModel: UserInfoModel(image:  Assets.imagesAvatar3, title: 'Lekan Okeowo', subtitle:  'demo@gmail.com'),
        
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 8,
          ),
        ),
        const ListViewDrawerItem(),
        //يخلي العمود معه ممتدد ونقدر نعمل اكسباندد
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const Expanded(child: SizedBox(height: 20,)),
              InActiveDrawerItem(
                drawerItemModel: DrawerItemModel(
                    image: Assets.imagesSettings, title: "Setting system"),
              ),
              InActiveDrawerItem(
                drawerItemModel: DrawerItemModel(
                    image: Assets.imagesLogout, title: "Logout account"),
              ),
              const SizedBox(
                height: 48,
              )
            ],
          ),
        )
      ]),
    );
  }
}
