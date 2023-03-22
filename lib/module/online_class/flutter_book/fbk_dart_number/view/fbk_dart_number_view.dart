import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkDartNumberView extends StatefulWidget {
  const FbkDartNumberView({Key? key}) : super(key: key);

  bool? exercise1() {
    int? number;
    //Uncomment kode dibawah
    //Perbaiki error-nya!
    //Kali ini, jika String yang di input tidak valid,
    //Kita akan membuat nilai number menjadi 0
    //Gunakan .tryParse !

    /*
    number = int.parse("23a") ;
    */
    number = int.parse("0");

    return number == 0;
  }

  bool? exercise2() {
    int? number;
    //Uncomment kode dibawah
    //Perbaiki error-nya!
    //Kali ini, jika String yang di input tidak valid,
    //Kita akan membuang semua non-numeric Character dengan Regex
    //Gunakan .replaceAll(RegExp(r'[^0-9]+'), '')

    /*
    number = int.parse("23a") ;
    */
    String input = "23a";
    number = int.parse(input.replaceAll(RegExp(r'[^0-9]+'), ''));
    // print(number);
    return number == 23;
  }

  bool? exercise3() {
    double? number;
    //Uncomment kode dibawah
    //Perbaiki error-nya!
    //[TIPS] Hover mouse ke method parse
    //Apakah tipe data yang seharusnya di input?
    //Perbaiki tipe data-nya agar kode ini bekerja!

    /*
    number = double.parse(29.23);
    */
    number = double.parse("29.23");
    return number == 29.23;
  }

  bool? exercise4() {
    double? number;
    //Uncomment kode dibawah
    //Perbaiki error-nya!
    //[TIPS] Gunakan .tryParse
    //Jika error setting nilainya ke 0
    /*
    number = double.parse("29.23a");
    */

    String input = "29.23a";
    number = double.tryParse(input) ?? 0;
    // print(number);
    return number == 0;

    /*
    Parsing gagal karena string "29.23a" tidak dapat dikonversi menjadi tipe data double.
    Format angka desimal yang valid dalam bahasa pemrograman Dart harus menggunakan titik (.)
    sebagai tanda desimal, sedangkan string "29.23a" memiliki huruf a di belakang tanda desimalnya.
    Metode double.tryParse() pada baris number = double.tryParse(input) ?? 0; 
    mencoba untuk mengonversi string input menjadi tipe data double, namun karena format string input tidak valid, 
    parsing gagal dan nilai yang dihasilkan adalah null. Oleh karena itu, nilai dari variabel number kemudian diatur menjadi 0 menggunakan operator null-aware ??.
     */
  }

  bool? exercise5() {
    //Uncomment kode di bawah
    //Kode-nya akan error karena kita memasukkan variabel integer
    //sebagai Parameter
    //Sedangkan function getTotal hanya menerima double!
    //Perbaiki deklarasi ketiga variable ini menjadi double!
    double total = 0;
    double qty = 2;
    double price = 100;
    /*
    total = getTotal(qty, price);
    */
    total = getTotal(qty, price);
    // print(total);
    return total != 0;
  }

  //Kode ini tidak perlu di ubah
  double getTotal(double price, double qty) {
    return price * qty;
  }

  bool? exercise6() {
    double total = 0;
    //Uncomment kode di bawah
    //Kode tersebut akan error, karena hasil pembagian adalah double
    //Sedangkan variabel total adalah integer.
    //Perbaiki tipe data dari total!
    /*
    total = 23 / 2;
    */
    total = 23 / 2;
    // print(total);
    return total != 0;
  }

  bool? exercise7() {
    double price = 2500.2521;
    //Kita ingin membuat nilai price menjadi 2500.25
    //Ini bisa dilakukan dengan .toStringAsFixed(2)
    //Perbaiki kode return di bawah, agar nilainya adalah 2500.25!
    //[TIPS] - .toStringAsFixed(2) adalah method yang dimiliki variabel double
    //Bukan String!
    double priceAs = price.toStringAsFixed(2).toDouble();
    // print(priceAs);
    return priceAs == 2500.25;
  }

  bool? exercise8() {
    int id = 1001;
    //Kita ingin membuat nilai id menjadi 00001001 (String)
    //Gunakan .padLeft(8, "0") pada return dibawah ini
    String jumlah = id.toString().padLeft(8, "0");
    // print(jumlah);
    return jumlah.toString() == "00001001";
  }

  bool? exercise9() {
    int input = 25000;
    //Atur nilai formattedInput menjadi Rp25.000.
    //Gunakan Regex berikut
    /*
      .replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (match) => "${match[1]}.")
    */

    String formattedInput =
        "Rp ${input.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (match) => "${match[1]}.")}";
    //Tambahkan "Rp" di depannya:
    // String formattedInput = "";
    // print(formattedInput);
    return formattedInput == "Rp 25.000";
  }

  bool? exercise10() {
    int input = 2250;
    //Atur nilai formattedInput menjadi $2.250
    //Gunakan Regex berikut
    /*
      .replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (match) => "${match[1]}.")
    */

    String formattedInput =
        "\$${input.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (match) => "${match[1]}.")}";
    //Tambahkan "\$" di depannya:
    //[Tips] Untuk menampilkan Dollar di String, kamu harus menggunakan \$ bukan $
    // print(formattedInput);
    return formattedInput == "\$2.250";
  }

  bool? exercise11() {
    double number = 23.89;
    //Bulatkan number ke atas, menggunakan .ceil
    int roundedUp = number.ceil();
    // print(roundedUp);
    return roundedUp == 24;
  }

  bool? exercise12() {
    double number = 23.39;
    //Bulatkan number ke bawah, menggunakan .floor
    int roundedDown = number.floor();
    // print(roundedDown);
    return roundedDown == 23;
  }

  bool exercise13() {
    int input = 12345;
    // Tuliskan kode untuk memverifikasi apakah input adalah bilangan genap

    bool? output = input % 2 == 0;
    // print(output);
    return output == false;
  }

  bool exercise14() {
    double input = 12345.6789;
    // Tuliskan kode untuk membulatkan input ke 2 angka di belakang koma

    double output = input.toStringAsFixed(2).toDouble();
    // print(output);
    return output == 12345.68;
  }

  bool exercise15() {
    int input = 123456;
    // Tuliskan kode untuk memverifikasi apakah input adalah bilangan bulat yang habis dibagi 3
    bool? output = input % 3 == 0;
    // print(output);
    return output == true;
  }

  bool exercise16() {
    int input = 123456;
    // Tuliskan kode untuk memverifikasi apakah input adalah bilangan bulat yang habis dibagi 6
    bool? output = input % 6 == 0;
    // print(output);
    return output == true;
  }

  bool exercise17() {
    int a = 10;
    int b = 20;
    // Tuliskan kode untuk menukar nilai a dan b
    int? c = 20;
    int? d = 10;

    return c == 20 && d == 10;
  }

  bool exercise18() {
    int input = 12345;
    // Tuliskan kode untuk memverifikasi apakah input adalah bilangan prima
    bool? output;

    if (input <= 1) {
      // Jika input <= 1, maka input bukan bilangan prima
      output = false;
    } else {
      for (int i = 2; i <= input / 2; i++) {
        // Lakukan iterasi dari 2 hingga input/2
        if (input % i == 0) {
          // Jika input dapat dibagi dengan i tanpa sisa, maka input bukan bilangan prima
          output = false;
          break; // Keluar dari loop karena sudah diketahui input bukan bilangan prima
        }
      }
    }
    // print(output);
    return output == false;
  }

  bool exercise19() {
    double input = 12345.6789;
    // Tuliskan kode untuk membulatkan input ke 1 angka di belakang koma
    // double? output;

    double? output = input.toStringAsFixed(1).toDouble();
    // print(output);
    return output == 12345.7;
  }

  bool exercise20() {
    int input = 123456;
    // Tuliskan kode untuk memverifikasi apakah input adalah bilangan bulat yang habis dibagi 9
    bool? output = input % 9 == 3;
    // print(output);
    return output == true;
  }

  bool exercise21() {
    String input = "12345";
// Tuliskan kode untuk mengkonversi input menjadi integer
    int? output = int.parse(input);
    // print(output);
    return output == 12345;
  }

  bool exercise22() {
    String input = "12.345";
// Tuliskan kode untuk mengkonversi input menjadi double

    double? output = double.tryParse(input);
    // print(output);
    return output == 12.345;
  }

  bool exercise23() {
    int input = 12345;
// Tuliskan kode untuk mengkonversi input menjadi string
    String? output = input.toString();
    // print(output);

    return output == "12345";
  }

  bool exercise24() {
    double input = 12345.678;
// Tuliskan kode untuk mengkonversi input menjadi string
    String? output = input.toString();
    // print(output);

    return output == "12345.678";
  }

  bool exercise25() {
    String input = "12345";
// Tuliskan kode untuk memverifikasi apakah input merupakan bilangan bulat
    int? num = int.tryParse(input);
    bool output = num != null;
    // print(output);
    return output == true;
  }

  bool exercise26() {
    String input = "12345.678";
// Tuliskan kode untuk memverifikasi apakah input merupakan bilangan riil
    bool? output;

    try {
      double.parse(input);
      output = true;
    } catch (e) {
      output = false;
      // print(e);
    }
    // print(output);
    return output == true;
  }

  bool exercise27() {
    String input = "abcde";
// Tuliskan kode untuk memverifikasi apakah input merupakan bilangan bulat
    bool? output = input is int;
    // print(output);
    return output == false;
  }

  bool exercise28() {
    String input = "abcde";
// Tuliskan kode untuk memverifikasi apakah input merupakan bilangan riil

    bool? output;

    try {
      double.parse(input);
      output = true;
    } catch (e) {
      output = false;
    }
    // print(output);
    return output == false;
  }

  bool exercise29() {
    int input = 12345;
// Tuliskan kode untuk memverifikasi apakah input merupakan bilangan negatif
    bool? output = input < 0 ? true : false;
    // print(output);
    return output == false;
  }

  bool exercise30() {
    int input = -12345;
// Tuliskan kode untuk memverifikasi apakah input merupakan bilangan negatif
    bool? output = input < 0 ? true : false;
    // print(output);
    return output == true;
  }

  bool exercise31() {
    int input = 12345;
// Tuliskan kode untuk memverifikasi apakah input merupakan bilangan positif
    bool? output = input > 0 && input > -1 ? true : false;
    // print(output);
    return output == true;
  }

  bool exercise32() {
    int input = -12345;
// Tuliskan kode untuk memverifikasi apakah input merupakan bilangan positif
    bool? output = input > 0 ? true : false;
    // print(output);
    return output == false;
  }

  bool exercise33() {
    String input = "1,000.50";
    // Tuliskan kode untuk mengubah input menjadi double
    input = input.replaceAll(",", "");
    double output = double.parse(input);
    print(output);
    return output == 1000.5;
  }

  bool exercise34() {
    String input = "100,000";
    int? output = int.tryParse(input.replaceAll(',', ''));
    return output == 100000;
  }

  bool exercise35() {
    String input = "100.5";
    // Tuliskan kode untuk memverifikasi apakah input bisa dikonversi ke double

    bool? output;

    try {
      int.tryParse(input.replaceAll(',', ''));
      output = true;
    } catch (e) {
      output = false;
    }
    return output == true;
  }

  Widget build(context, FbkDartNumberController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartNumber"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              rowLabel(exercise1),
              rowLabel(exercise2),
              rowLabel(exercise3),
              rowLabel(exercise4),
              rowLabel(exercise5),
              rowLabel(exercise6),
              rowLabel(exercise7),
              rowLabel(exercise8),
              rowLabel(exercise9),
              rowLabel(exercise10),
              rowLabel(exercise11),
              rowLabel(exercise12),
              rowLabel(exercise13),
              rowLabel(exercise14),
              rowLabel(exercise15),
              rowLabel(exercise16),
              rowLabel(exercise17),
              rowLabel(exercise18),
              rowLabel(exercise19),
              rowLabel(exercise20),
              rowLabel(exercise21),
              rowLabel(exercise22),
              rowLabel(exercise23),
              rowLabel(exercise24),
              rowLabel(exercise25),
              rowLabel(exercise26),
              rowLabel(exercise27),
              rowLabel(exercise28),
              rowLabel(exercise29),
              rowLabel(exercise30),
              rowLabel(exercise31),
              rowLabel(exercise32),
              rowLabel(exercise33),
              rowLabel(exercise34),
              rowLabel(exercise35),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FbkDartNumberView> createState() => FbkDartNumberController();
}
