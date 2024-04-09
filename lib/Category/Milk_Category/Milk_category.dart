import "package:flutter/material.dart";
import "package:wscubetech_app_ui/App_Drawer/CustomWidget_AppDrawer.dart";

class MilkCategory extends StatelessWidget {
  const MilkCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Milk Category",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notification_add_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 360.0,
            child: Column(
              children: [
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UiHelper.customContainer3(
                      height: 220.0,
                      width: 168.0,
                      image: "assets/images/Cow.jpg",
                      text: "Cow's Milk",
                    ),
                    UiHelper.customContainer3(
                      height: 220.0,
                      width: 168.0,
                      image: "assets/images/goat.png",
                      text: "Goat's Milk",
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UiHelper.customContainer3(
                      height: 220.0,
                      width: 168.0,
                      image: "assets/images/camel1.jpg",
                      text: "Camel's Milk",
                    ),
                    UiHelper.customContainer3(
                      height: 220.0,
                      width: 168.0,
                      image: "assets/images/buffalo.webp",
                      text: "Buffalo's Milk",
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UiHelper.customContainer3(
                      height: 220.0,
                      width: 168.0,
                      image: "assets/images/sheep.webp",
                      text: "Sheep's Milk",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
