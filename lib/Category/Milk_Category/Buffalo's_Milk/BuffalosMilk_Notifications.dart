import "package:flutter/material.dart";

class BuffalosMilkNotifications extends StatelessWidget {
  BuffalosMilkNotifications({super.key});

  var notificationsInfoList = [
    "Notifications are an important tool used on the majority of applications, aimed at improve"
        " user experience & used to engage users with your application.",
    "The Cloud Messaging module"
        " provides basic support for displaying and handling notifications.",
    "Since notifications are a visible cue, it is common for users to interact with it (by pressing them)."
        " The default behavior on both Android & iOS is to open the application. ",
    " If the application is terminated it will be started, if it is in the background it will be"
        " brought to the foreground.",
    "Depending on the content of a notification, you may wish to handle the users interaction"
        " when the application opens.",
    ". For example, if a new chat message is sent via a notification and the user presses it,"
        " you may want to open the specific conversation when the application opens.",
  ];

  var trailingNumbers = [1, 2, 3, 4, 5, 6];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: const Text(
          "Notification",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: notificationsInfoList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(notificationsInfoList[index].toString()),
                      trailing: Text(
                        trailingNumbers[index].toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
