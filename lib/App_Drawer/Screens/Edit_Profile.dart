import "package:flutter/material.dart";
import "package:wscubetech_app_ui/App_Drawer/CustomWidget.dart";

class EditProfile extends StatelessWidget {
  EditProfile({super.key});

  TextEditingController nameController = TextEditingController(text: "Jay");
  TextEditingController surnameController =
      TextEditingController(text: "Hanuman");
  TextEditingController emailController =
      TextEditingController(text: "jayhanuman654@gmail.com");
  TextEditingController phoneController =
      TextEditingController(text: "5899654471");

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        return FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Profile",
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
        body: Center(
          child: SingleChildScrollView(
            child: SizedBox(
              width: 360.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 100.0,
                    backgroundImage: AssetImage(
                        "assets/images/User_Account_Image_AppDrawer_MyProfile.avif"),
                  ),
                  const SizedBox(height: 10.0),
                  UiHelper.customTextFormField(
                    controller: nameController,
                    text: "Enter the name",
                  ),
                  const SizedBox(height: 20.0),
                  UiHelper.customTextFormField(
                    controller: surnameController,
                    text: "Enter the surname",
                  ),
                  const SizedBox(height: 20.0),
                  UiHelper.customTextFormField(
                    controller: emailController,
                    text: "Enter the Email",
                  ),
                  const SizedBox(height: 20.0),
                  UiHelper.customTextFormField(
                    controller: phoneController,
                    text: "Enter the phone",
                  ),
                  const SizedBox(height: 40.0),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text(
                              "Profile Updated",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "Ok",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                      fontSize: 20.0),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      fixedSize: const Size(300.0, 50.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child: Text(
                      "Update Profile",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
