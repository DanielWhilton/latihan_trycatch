import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  //fungsi future tanpa pengembalian nilai
  // Future<void> tarikData() async {
  //   var response = await http.get(
  //     Uri.parse('https://jsonplaceholder.typicode.com/posts'),
  //   );
  //   var data = jsonDecode(response.body);
  //   print(data);
  // }

  //POIN buat future dengan pengembalian dari contoh di atas
  Future<dynamic> tarikData2() async {
    try {
      var response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/comments'),
    );
    var data = jsonDecode(response.body);
    return data;
    } catch(e) {
      return [];
    }
    
  }

  // Panggil fungsi tarikData2 dan tangkap hasilnya
  var data = await tarikData2();
  print('----------------------------------------');
  print('Data Comments');
  print('----------------------------------------');

  for (var i = 0; i < data.length; i++) {
    print('${data[i]['name']} | ${data[i]['email']}');
    print('----------------------------------------');
  }

  //POIN
  //Buatkan ke dalam for in
// for (var comment in data) {
//   print('${comment['name']} | ${comment['email']}');
//   print('----------------------------------------');
// }
  //Buatkan ke dalam for each
// data.forEach((comment) {
//   print('${comment['name']} | ${comment['email']}');
//   print('----------------------------------------');
// });

}
