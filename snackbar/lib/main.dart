import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Get.snackbar("test snack bar title", "snackbar message");
              },
              child: Text("Snackbar button"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                      color: Colors.amber,
                      child: Center(
                        child: ListView(
                          children: const [
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: Text("Bottom Sheets Button"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.generalDialog(pageBuilder: (_, __, ____) {
                  return Padding(
                    padding: const EdgeInsets.all(50),
                    child: Container(
                      width: 10.0,
                      height: 40.0,
                      color: Colors.amber,
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Custom Dialog"),
                          ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("cancel"))
                        ],
                      )),
                    ),
                  );
                });
              },
              child: Text("Generate Dialog Pop Up button"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    barrierDismissible:
                        false, // false=> close pop up when clicking outside popup,
                    title: "ini judul",
                    middleText: "Ini deskripsinya",
                    //bawaan cancel
                    textCancel: "cancel",
                    cancelTextColor: Colors.pink,
                    onCancel: () {
                      print("cancel button clicked");
                    },
                    //bawaan confirm
                    textConfirm: "Confirm",
                    confirmTextColor: Colors.blueAccent,
                    onConfirm: () {},

                    //custom cancel
                    cancel: ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text("Cancel custom"),
                    ),
                    //custom confirm
                    confirm: ElevatedButton(
                      onPressed: () {},
                      child: Text("Confirm custom"),
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Action 1"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Action 2"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Action 3"),
                      ),
                    ]);
              },
              child: Text("Dialog / pop up confirmation button"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("test snack bar title", "snackbar message");
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
