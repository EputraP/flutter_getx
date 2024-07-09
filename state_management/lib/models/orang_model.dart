class Orang {
  String? nama = "Joko";
  String? umur = "12";
  Orang(String paramsName, String paramsUmur) {
    nama = paramsName.isEmpty ? nama : paramsName;
    umur = paramsUmur.isEmpty ? umur : paramsUmur;
  }
}
