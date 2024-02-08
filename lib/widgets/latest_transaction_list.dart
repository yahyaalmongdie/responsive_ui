import 'package:flutter/material.dart';
import 'package:responcive_dashboard/models/user_info_model.dart';
import 'package:responcive_dashboard/utils/app_images.dart';
import 'package:responcive_dashboard/widgets/user_info_listtile.dart';

class LatestTransactionList extends StatelessWidget {
  const LatestTransactionList({super.key});

  static const List<UserInfoModel> items = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return

        // اذا كان عدد العناصر الذي اتعرض محدد وهورزنتل نستخد  صف
        
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
          
            children:items.map((e) =>IntrinsicWidth(
              child: UserInfoListTile(
                userInfoModel: e,
              ),
            )).toList(),
          ),
        );

    // اذا كان عدد العناصر الذي اتعرض كبير وهورزنتل نستخد لست فيو بيلدر
   // SizedBox(
      //مجبر تستخدم هذا الحل عندما يكون الاسكرول افقي و لست فيو
      //compose height of children   here collect for listYTile
      // height: 80,
      // child: ListView.builder(
      //   scrollDirection: Axis.horizontal,
      //   itemCount: items.length,
      //   itemBuilder: (context, index) {
      //     return IntrinsicWidth(
      //       child: UserInfoListTile(
      //         userInfoModel: items[index],
      //       ),
      //     );
      //   },
      // ),
    // );
  }
}
