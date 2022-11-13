import 'package:area/src/presentation/navbar/area_list/area_list_page.dart';
import 'package:area/src/presentation/navbar/new_area/new_area_page.dart';
import 'package:area/src/presentation/navbar/profile/profile_page.dart';
import 'package:area/src/presentation/router.dart';
import "package:flutter/material.dart";
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum NavBarPages {
  navAreaList,
  navAreaNew,
  navProfile,
}

class NavBarPage extends ConsumerWidget {
  NavBarPage({
    required this.currentPage,
    Key? key,
  }) : super(key: key);

  final NavBarPages currentPage;

  final List<Widget> pages = const [
    AreaListPage(),
    NewAreaPage(),
    ProfilePage(),
  ];

  final List<String> routes = [
    AreaListPage.routeLocation,
    NewAreaPage.routeLocation,
    ProfilePage.routeLocation,
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: pages[currentPage.index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage.index,
        onTap: (i) {
          ref.read(routerProvider).go(routes[i]);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "AREAs",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: "Create",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
