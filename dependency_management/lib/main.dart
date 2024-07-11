import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // fenix
  // -> false (default) =>  misal back dia  tetep dihapus, cuma masih nyisa di memory dan bisa dipanggil lagi
  // -> true => dia bener2 dihapus dari memory, jadi ketika mau ke page tujuan bakal error
  // tag
  // -> gunanya untuk biar si put nya khusus untuk si findnya
  final myC = Get.lazyPut(() => MyController(), tag: 'tag-text', fenix: true);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.to(() => CountPage()),
              icon: const Icon(Icons.keyboard_arrow_right))
        ],
      ),
      body: const Center(
        child: Text("Home Page"),
      ),
    );
  }
}

class CountPage extends StatelessWidget {
  // permanent
  // kalo false (default)
  // -> jadi kan karena ini putnya kan di page countPage
  // -> kalo dia ganti page, maka nilai countPage nya bakal kereset
  // -> karena tiap keluar dari countPage, MyController bakal dihapus dari memory
  // -> dan setiap masuk ke countPage maka MyController dibuat lagi
  // -> jadi nilai nya bakal kereset

  // kalo true
  // -> maka MyController gk dihapus dari memory, jadi nilainya gk dihapus
  final c = Get.put(MyController(), permanent: true, tag: 'tag-count');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.to(() => TextPage()),
              icon: const Icon(Icons.keyboard_arrow_right))
        ],
      ),
      body: Center(
        child: Obx(
          () => Text('${c.count}'),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => c.add()),
    );
  }
}

class TextPage extends StatelessWidget {
  final c = Get.find<MyController>(tag: 'tag-text');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Obx(
            () => TextField(
              controller: c.textC,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyController extends GetxController {
  var count = 0.obs;

  var textC = TextEditingController();

  void add() => count++;
}
