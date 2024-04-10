import "package:flutter/material.dart";
import "package:wscubetech_app_ui/App_Drawer/App_Drawer.dart";
import "package:wscubetech_app_ui/App_Drawer/CustomWidget.dart";
import "package:wscubetech_app_ui/Beverages/Lassi/Lassi.dart";
import "package:wscubetech_app_ui/Beverages/MilkShake/MilkShake.dart";
import "package:wscubetech_app_ui/Category/ButterMilk_Category/ButterMilk_category.dart";
import "package:wscubetech_app_ui/Category/Dahi_Category/Dahi_category.dart";
import "package:wscubetech_app_ui/Category/Ghee_Category/Ghee_category.dart";
import "package:wscubetech_app_ui/Category/Milk_Category/Milk_category.dart";
import "package:wscubetech_app_ui/HomePage/Polular_Now/Buffalo_Milk/Buffalo_Milk.dart";
import "package:wscubetech_app_ui/HomePage/Polular_Now/Camel_Milk/Camel_Milk.dart";
import "package:wscubetech_app_ui/Notification/Notifications.dart";
import "package:wscubetech_app_ui/Splash_Screen/Splash_Screen.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WscubeTech APP UI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        return FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Notifications();
                    },
                  ),
                );
              },
              icon: const Icon(Icons.notification_add_outlined,
                  color: Colors.white),
            ),
          ],
          title: const Text(
            "Maleno",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: 360.0,
              child: Column(
                children: [
                  const SizedBox(height: 30.0),
                  TextFormField(
                    controller: searchController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Search",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Stack(
                    children: [
                      // UiHelper.customContainer2(
                      //   width: 350.0,
                      //   height: 160.0,
                      //   image: "assets/images/Grab_Your_Dairy_Items.jpg",
                      //   child: const Padding(
                      //     padding: EdgeInsets.all(8.0),
                      //     child: Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         Text(
                      //           "Grab Your\nDairy Items",
                      //           style: TextStyle(
                      //               fontWeight: FontWeight.bold,
                      //               color: Colors.white,
                      //               fontSize: 30.0),
                      //         ),
                      //         Text(
                      //           "Discount Upto 50% off",
                      //           style: TextStyle(color: Colors.white),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),

                      Card(
                        elevation: 20.0,
                        child: Container(
                          width: 350.0,
                          height: 160.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13.0),
                            image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/Grab_Your_Dairy_Items.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Grab Your\nDairy Items",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 30.0),
                                ),
                                Text(
                                  "Discount Upto 50% off",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return MilkCategory();
                                },
                              ),
                            );
                          },
                          child: UiHelper.customContainer(
                            height: 70.0,
                            width: 70.0,
                            image: "assets/images/milk.jpg",
                            text: "Milk",
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return GheeCategory();
                                },
                              ),
                            );
                          },
                          child: UiHelper.customContainer(
                            height: 70.0,
                            width: 70.0,
                            image: "assets/images/ghee-pot1.webp",
                            text: "Ghee",
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DahiCategory();
                                },
                              ),
                            );
                          },
                          child: UiHelper.customContainer(
                            height: 70.0,
                            width: 70.0,
                            image: "assets/images/dahi.jpg",
                            text: "Dahi",
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ButterMilkCategory();
                                },
                              ),
                            );
                          },
                          child: UiHelper.customContainer(
                            height: 70.0,
                            width: 70.0,
                            image: "assets/images/buttermilk.jpg",
                            text: "Butter Milk",
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        const Text(
                          "Popular Now",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25.0),
                        ),
                        const SizedBox(width: 10.0),
                        Image.asset("assets/images/fire_GIF.gif",
                            height: 25.0, width: 25.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return BuffaloMilk();
                              },
                            ),
                          );
                        },
                        child: UiHelper.customContainer3(
                          height: 220.0,
                          width: 168.0,
                          image: "assets/images/Buffelo_Milk_2.jpg",
                          text: "Buffelo Milk",
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return CamelMilk();
                              },
                            ),
                          );
                        },
                        child: UiHelper.customContainer3(
                          height: 220.0,
                          width: 168.0,
                          image: "assets/images/Camel_Milk_Powder.webp",
                          text: "Camel Milk",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  Card(
                    elevation: 20.0,
                    child: Container(
                      width: 350.0,
                      height: 160.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.0),
                        image: const DecorationImage(
                          image: AssetImage(
                              "assets/images/Vedic_Significance.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        const Text(
                          "Beverages",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25.0),
                        ),
                        const SizedBox(width: 30.0),
                        Image.asset("assets/images/milkicon.png",
                            width: 30.0, height: 30.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return MilkShake();
                              },
                            ),
                          );
                        },
                        child: UiHelper.customContainer3(
                          height: 220.0,
                          width: 168.0,
                          image: "assets/images/Amul_kool_bottle.webp",
                          text: "MilkShake",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Lassi();
                              },
                            ),
                          );
                        },
                        child: UiHelper.customContainer3(
                          height: 220.0,
                          width: 168.0,
                          image: "assets/images/Amul_Lassi_Bottle.png",
                          text: "    Lassi",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
