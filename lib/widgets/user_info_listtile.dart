import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responcive_dashboard/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  final String image, title, subtitle;
  const UserInfoListTile({super.key, required this.image, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0XFFFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          subtitle,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}
