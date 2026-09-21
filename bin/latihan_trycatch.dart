import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  //fungsi future tanpa pengembalian nilai
  Future<void> tarikData() async {
    var response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );
    var data = jsonDecode(response.body);
    print(data);
  }

  //POIN buat future dengan pengembalian dari contoh di atas
  Future<List> tarikData2() async {
    var response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );
    var data = jsonDecode(response.body);
    return data;
  }

  // Panggil fungsi tarikData2 dan tangkap hasilnya
  await tarikData2();
}
