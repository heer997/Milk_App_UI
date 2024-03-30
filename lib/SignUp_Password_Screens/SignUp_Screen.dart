import "package:flutter/material.dart";
import "package:wscubetech_app_ui/SignUp_Password_Screens/Password.dart";

class SignUp extends StatelessWidget {
  SignUp({super.key});

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        return FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.blue.shade700,
                Colors.blue.shade100,
                Colors.blue.shade50,
              ],
              begin: const FractionalOffset(1.0, 0.0),
              end: const FractionalOffset(0.0, 1.0),
            ),
          ),
          child: Center(
            child: Container(
              width: 360.0,
              height: 480.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Sign Up",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  const SizedBox(height: 50.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(11.0),
                    ),
                    width: 330.0,
                    child: TextFormField(
                      controller: usernameController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.account_circle_outlined),
                        hintText: "Username",
                        hintStyle: TextStyle(fontWeight: FontWeight.w400),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(11.0),
                    ),
                    width: 330.0,
                    child: TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
                        border: InputBorder.none,
                        hintText: "Email",
                        hintStyle: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(11.0),
                    ),
                    width: 330.0,
                    child: TextFormField(
                      controller: phoneController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        hintText: "Phone",
                        hintStyle: TextStyle(fontWeight: FontWeight.w400),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Row(
                    children: [
                      const SizedBox(width: 20.0),
                      ElevatedButton(
                        onPressed: () {
                          var username = usernameController.text;
                          var email = emailController.text;
                          var phone = phoneController.text;
                          if (username == "" && email == "" && phone == "") {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return const AlertDialog(
                                  title: Text(
                                    "Please fill all details",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  content: Text("Enter required details"),
                                );
                              },
                            );
                          }
                          else
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Password();
                                  },
                                ),
                              );
                            }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          fixedSize: const Size(150.0, 50.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11.0),
                          ),
                        ),
                        child: const Text(
                          "Create",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 60.0),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Sign In",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
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
