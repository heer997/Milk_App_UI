import "package:flutter/material.dart";
import "package:wscubetech_app_ui/App_Drawer/CustomWidget.dart";
import "package:wscubetech_app_ui/Category/ButterMilk_Category/MotherDairy_ButterMilk/MotherDairyButterMilk_Notifications.dart";

class MotherDairyButterMilk extends StatefulWidget {
  const MotherDairyButterMilk({super.key});

  @override
  State<MotherDairyButterMilk> createState() => _MotherDairyButterMilkState();
}

class _MotherDairyButterMilkState extends State<MotherDairyButterMilk> {
  bool isPressed = false;
  bool isPressed2 = false;
  bool isPressed3 = false;
  bool isPressed4 = false;
  bool isPressed5 = false;
  bool isPressed6 = false;
  bool isPressed7 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MotherDairy ButterMilk",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MotherDairyButterMilkNotifications();
                  },
                ),
              );
            },
            icon: const Icon(Icons.notification_add_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 370.0,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 20.0),
                Image.asset("assets/images/Mother_Dairy_ButterMilk.webp",
                    height: 300.0, width: 300.0),
                const SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "MotherDairy ButterMilk",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Best Farm Cow",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Text(
                        "Fresh ButterMilk",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Rs. 110L",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 60.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: const Center(
                          child: Text(
                            "4.5",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    const Text("97,547 ratings"),
                  ],
                ),
                const SizedBox(height: 10.0),
                const Divider(color: Colors.grey),
                const SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      const Text(
                        "Litres",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      Image.asset("assets/images/milkicon.png",
                          width: 30.0, height: 30.0),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Row(
                    children: [
                      UiHelper.customTextButton(
                        callback: () {
                          setState(
                            () {
                              isPressed = !isPressed;
                            },
                          );
                        },
                        text: "1",
                        color2: isPressed ? Colors.white : Colors.black,
                        color: isPressed ? Colors.blue : Colors.grey.shade300,
                      ),
                      const SizedBox(width: 10.0),
                      UiHelper.customTextButton(
                        callback: () {
                          setState(
                            () {
                              isPressed2 = !isPressed2;
                            },
                          );
                        },
                        text: "2",
                        color2: isPressed2 ? Colors.white : Colors.black,
                        color: isPressed2 ? Colors.blue : Colors.grey.shade300,
                      ),
                      const SizedBox(width: 10.0),
                      UiHelper.customTextButton(
                        callback: () {
                          setState(
                            () {
                              isPressed3 = !isPressed3;
                            },
                          );
                        },
                        text: "3",
                        color2: isPressed3 ? Colors.white : Colors.black,
                        color: isPressed3 ? Colors.blue : Colors.grey.shade300,
                      ),
                      const SizedBox(width: 10.0),
                      UiHelper.customTextButton(
                        callback: () {
                          setState(
                            () {
                              isPressed4 = !isPressed4;
                            },
                          );
                        },
                        text: "4",
                        color2: isPressed4 ? Colors.white : Colors.black,
                        color: isPressed4 ? Colors.blue : Colors.grey.shade300,
                      ),
                      const SizedBox(width: 10.0),
                      UiHelper.customTextButton(
                        callback: () {
                          setState(
                            () {
                              isPressed5 = !isPressed5;
                            },
                          );
                        },
                        text: "5",
                        color2: isPressed5 ? Colors.white : Colors.black,
                        color: isPressed5 ? Colors.blue : Colors.grey.shade300,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                const Divider(color: Colors.grey),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Description",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "India is the largest milk producer in the whole world Milk can be adulterated with"
                    " water to increase it volume or"
                    " it may be adulterated with urea or starch to increase the content of total solid.",
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
                const Divider(color: Colors.grey),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Total: Rs.110",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Text(
                        "Free delivery ",
                        style: TextStyle(color: Colors.blue, fontSize: 19.0),
                      ),
                      Text(
                        "Thursday, 10 November ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19.0),
                      ),
                      Text(
                        "on",
                        style: TextStyle(fontSize: 19.0),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Text(
                        "your first order.Order within ",
                        style: TextStyle(fontSize: 19.0),
                      ),
                      Text(
                        "2 hrs 45min",
                        style: TextStyle(color: Colors.blue, fontSize: 19.0),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30.0),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      SizedBox(width: 5.0),
                      Text(
                        "Select delivery location",
                        style: TextStyle(color: Colors.blue, fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                UiHelper.customTextButton2(
                  callback: () {
                    setState(
                      () {
                        isPressed6 = !isPressed6;
                      },
                    );
                  },
                  text: "Buy Now",
                  color2: isPressed6 ? Colors.white : Colors.black,
                  color: isPressed6 ? Colors.blue : Colors.grey.shade300,
                ),
                const SizedBox(height: 15.0),
                UiHelper.customTextButton2(
                  callback: () {
                    setState(
                      () {
                        isPressed7 = !isPressed7;
                      },
                    );
                  },
                  text: "Add To Cart",
                  color2: isPressed7 ? Colors.white : Colors.black,
                  color: isPressed7 ? Colors.blue : Colors.grey.shade300,
                ),
                const SizedBox(height: 30.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
