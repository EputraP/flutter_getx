import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePageStateless(),
    );
  }
}

class HomePageStateless extends StatelessWidget {
  final countC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            // ini kalo balik ke home controllernya ntar dihapus dari memory
            onPressed: () => Get.to(
              () => OtherPage(),
            ),
            //kalo pakai page route material page route pas ganti page controllernya gk ke clear, harus di clear pakai dispose
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => OtherPage(),
            //   ),
            // ),
            icon: Icon(Icons.refresh),
          )
        ],
      ),
      body: Center(
        child: CountWidgetStatless(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countC.add();
        },
      ),
    );
  }
}

class CountWidgetStatless extends StatelessWidget {
  // final countC = Get.find<CounterController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(
      // life cycle widget adad di get builder doang, dia GetX dan Obx gk ada
      initState: (_) => print("init"),
      didChangeDependencies: (_) => print("didChangeDependencies"),
      didUpdateWidget: (oldWidget, state) => print("didUpdateWidget"),
      dispose: (_) => print("dispose"),
      builder: (c) => Text('Angka: ${c.count}'),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => OtherPage(),
              ),
            ),
            icon: Icon(Icons.refresh),
          )
        ],
      ),
      body: Center(
        child: CountWidget(count: count),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}

class CountWidget extends StatefulWidget {
  final int count;
  const CountWidget({super.key, required this.count});
  @override
  State<CountWidget> createState() => _CountWidgetState();
}

class _CountWidgetState extends State<CountWidget> {
  @override
  // This method is called after the widget is inserted into the widget tree, when the object is created for the first time.
  void initState() {
    print("initState");
    super.initState();
  }

  // This method is called when a dependency of this widget changes.
  // It is useful when the widget depends on some external data or inherits data from its parent widget.
  // It is also called immediately after initState()
  @override
  void didChangeDependencies() {
    print("didChangeDependencies");
    super.didChangeDependencies();
  }

// Triggered when the widget is rebuilt with updated properties.
//It is called after build() and allows you to compare the previous and current widget properties.
  @override
  void didUpdateWidget(covariant CountWidget oldWidget) {
    print('Old widget: $oldWidget -- didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

// Called when the widget is removed from the widget tree permanently, allowing you to release resources held by the widget.
  @override
  void dispose() {
    print("dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text('Angka: ${widget.count}');
  }
}

class OtherPage extends StatelessWidget {
  final textC = Get.put(TextController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Other Page"),
      ),
      body: TextField(
        controller: textC.myC,
      ),
    );
  }
}

class CounterController extends GetxController {
  var count = 0;

  void add() {
    count++;
    update();
  }
}

class TextController extends GetxController {
  final myC = TextEditingController();
}
