import 'package:flutter/material.dart';
import 'package:flutterprofile/pages/contact_page.dart';
import 'package:flutterprofile/pages/experience_page.dart';
import 'package:flutterprofile/pages/home_page.dart';
import 'package:flutterprofile/pages/portfolio_page.dart';
import 'package:flutterprofile/utils/AppIcons.dart';
import 'package:flutterprofile/utils/AppColors.dart';

import '../widgets/navigation_menu_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController _tabController;
  int selectedMenuIndex = 0;
  double iconSize = 20.0;

  @override
  void initState() {
    super.initState();

    _tabController = new TabController(length: 4, vsync: this);

    _tabController.addListener(() {
      setState(() {
        selectedMenuIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldkey,
        backgroundColor: backgroundLight,
        body: Container(
          margin: EdgeInsets.only(top: 10, left: 10),
          child: Row(
            children: <Widget>[
              Container(
                width: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 45,
                      height: 45,
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("assets/images/DG.jpg"),
                    ),
                    NavigationMenu(navHome,
                        height: iconSize,
                        width: iconSize,
                        isSelected: selectedMenuIndex == 0, onClick: () {
                      _tabController.animateTo(0);
                    }),
                    NavigationMenu(navTime,
                        height: iconSize,
                        width: iconSize,
                        isSelected: selectedMenuIndex == 1, onClick: () {
                      _tabController.animateTo(1);
                    }),
                    NavigationMenu(navPortfolio,
                        height: iconSize,
                        width: iconSize,
                        isSelected: selectedMenuIndex == 2, onClick: () {
                      _tabController.animateTo(2);
                    }),
                    // NavigationMenu(navGroup,
                    //     height: iconSize,
                    //     width: iconSize,
                    //     isSelected: selectedMenuIndex == 3, onClick: () {
                    //   _tabController.animateTo(3);
                    // }),
                    NavigationMenu(navContact,
                        height: iconSize,
                        width: iconSize,
                        isSelected: selectedMenuIndex == 3, onClick: () {
                      _tabController.animateTo(3);
                    }),
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _tabController,
                    children: [
                      HomePage(),
                      ExperiencePage(),
                      PortfolioPage(),
                      // TeamPage(),
                      ContactPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
