import 'package:flutter/material.dart';
import 'package:navigation_without_get/pages/page_satu.dart';

//Navigator Push
//> dia bakal ngestack screennya
//> bisa diback baik lewat appBar, maupun pake Navigator.pop()

//Navigator PushReplacement
//> dia bakal hapus screen sebelumnya dari memory
//> hapus 1 stack doang
//  jadi misal ada 2 stack, dari page 1 dipasaing push replacement ke 2
//> nah yang page 2 gk bisa back ke page 1
//> kalo misal ada 3 stack, dari page 2 dipasang push replacement ke 3
//> nah ini gk bisa, tetep bisa back 3 ke 2
//> gk bisa diback

//Navigator pushAndRemoveUntil
// dia bakal hapus screen2 stack dibawahnya dari memory
//> kalo misal ada 3 stack, dari page 2 dipasang push replacementUntil ke 3
//> nah ini gk bisa back ke page 2
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PageSatu());
  }
}
