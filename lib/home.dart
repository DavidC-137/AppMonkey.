import 'package:appmonkey/src/pages/home_page.dart';
import 'package:appmonkey/src/pages/latestOffers.dart';
import 'package:appmonkey/src/pages/logearPage.dart';
import 'package:appmonkey/src/pages/profile.dart';
import 'package:appmonkey/src/pages/resetPassword.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

// ignore: camel_case_types
class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screens = [
   const LogearPage(),
   const LatestOffers(),
   const Profile(),
   const ResetPassword(),
   const HomePage()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const LogearPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
        floatingActionButton: FloatingActionButton(  
          child: const Icon(Icons.home, 
          ),
          onPressed: (){
            setState(() {
              currentScreen = const HomePage();
              currentTab = 5;
            });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen = const LogearPage();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.dashboard,
                            color: currentTab == 0 ? Colors.orange : Colors.grey,
                          ),
                          Text(
                            'Menu',
                            style: TextStyle(
                              color: currentTab == 0 ? Colors.orange : Colors.grey
                              ),
                            )
                        ],
                      ),
                      ),
                       MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen = const LatestOffers();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.storefront,
                            color: currentTab == 1 ? Colors.orange : Colors.grey,
                          ),
                          Text(
                            'Offers',
                            style: TextStyle(
                              color: currentTab == 1 ? Colors.orange : Colors.grey
                              ),
                            )
                        ],
                      ),
                      )
                  ],
                ),
              
              
              
              //Parte derecha del navbar
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen = const Profile();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            color: currentTab == 3 ? Colors.orange : Colors.grey,
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(
                              color: currentTab == 3 ? Colors.orange : Colors.grey
                              ),
                            )
                        ],
                      ),
                      ),
                       MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen = const ResetPassword();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.info,
                            color: currentTab == 2 ? Colors.orange : Colors.grey,
                          ),
                          Text(
                            'More',
                            style: TextStyle(
                              color: currentTab == 2 ? Colors.orange : Colors.grey
                              ),
                            )
                        ],
                      ),
                      )
                  ],
                )
              
              ],
            ),
          )
          ),
    );
  }
}
