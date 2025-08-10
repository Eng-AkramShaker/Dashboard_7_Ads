import 'package:dashboard/models/drawer_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerInactiveItemWidget extends StatelessWidget {
  final DrawerModel drawerModel;
  const DrawerInactiveItemWidget({
    super.key,
    required this.drawerModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(drawerModel.icon, width: 24, height: 24),
          const SizedBox(width: 20),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                drawerModel.title,
                style: AppStyles.bold16(context),
                textAlign: TextAlign.right,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
