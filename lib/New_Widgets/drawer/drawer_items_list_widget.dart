import 'package:dashboard/models/drawer_model.dart';
import 'package:dashboard/utils/assets_data.dart';
import 'package:dashboard/New_Widgets/drawer/drawer_item_widget.dart';
import 'package:flutter/material.dart';

class DrawerItemsListWidget extends StatefulWidget {
  const DrawerItemsListWidget({super.key});

  @override
  State<DrawerItemsListWidget> createState() => _DrawerItemsListWidgetState();
}

class _DrawerItemsListWidgetState extends State<DrawerItemsListWidget> {
  int selectedIndex = 0;
  final List<DrawerModel> drawerItems = const [
    DrawerModel(icon: AssetsData.kDashboard, title: 'الرئيسية'),
    DrawerModel(icon: AssetsData.kStatistics, title: 'الأعلانات المعلقة'),
    DrawerModel(icon: AssetsData.kInvestments, title: 'الشكاوي والأقتراحات'),
    DrawerModel(icon: AssetsData.kInvestments, title: 'المستخدمين'),
    DrawerModel(icon: AssetsData.kInvestments, title: 'الرسائل والأشعارات'),
    DrawerModel(icon: AssetsData.kInvestments, title: 'تقارير وإحصائات'),
    DrawerModel(icon: AssetsData.kWallet, title: 'المحافظ والنقاط'),
    DrawerModel(icon: AssetsData.kInvestments, title: 'الأعلانات المثبتة و جوجل'),
    DrawerModel(icon: AssetsData.kInvestments, title: 'العروض'),
    DrawerModel(icon: AssetsData.kInvestments, title: 'قائمة الحظر'),
    DrawerModel(icon: AssetsData.kInvestments, title: 'الادوات'),
    DrawerModel(icon: AssetsData.kInvestments, title: 'المدفوعات'),
    DrawerModel(icon: AssetsData.kInvestments, title: 'حسابي'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: drawerItems.asMap().entries.map((e) {
        int index = e.key;
        DrawerModel item = e.value;
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: DrawerItemWidget(
              drawerModel: item,
              isActive: selectedIndex == index,
            ),
          ),
        );
      }).toList(),
    );
  }
}
