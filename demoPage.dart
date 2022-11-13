import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controller/demoController.dart';

class DemoPage extends StatelessWidget {
  final demoController ctrl = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Demo Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(Get.arguments)),
              SwitchListTile(
                value: ctrl.isDark,
                title: const Text("Touch to change themeMdoe"),
                onChanged: ctrl.changeTheme,
              ),
              ElevatedButton(
                onPressed: () => Get.snackbar(
                    "SnackBarr", "Hello is the snackbar message",
                    snackPosition: SnackPosition.BOTTOM,
                    colorText: Colors.white,
                    backgroundColor: Colors.black87),
                child: Text('Snack bar'),
              ),
              ElevatedButton(
                onPressed: () => Get.defaultDialog(
                  title: "dialouge",
                  content: Text('Hey From dialouge'),
                ),
                child: Text('Dialouge'),
              ),
              ElevatedButton(
                onPressed: () => Get.bottomSheet(Container(
                  height: 150,
                  color: Colors.white,
                  child: Text('Hello From Bottom Sheet'),
                )),
                child: Text('Bottom Sheet'),
              ),
              ElevatedButton(
                onPressed: () => Get.offNamed('/'),
                child: Text('back to home'),
              ),
            ],
          ),
        ));
  }
}