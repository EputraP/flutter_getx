import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
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
              icon: Icon(Icons.refresh))
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
