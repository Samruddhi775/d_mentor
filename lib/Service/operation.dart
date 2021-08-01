import 'package:http/http.dart' as http;

 Future<String> operation(var o,var a,var b) async{
  var url = 'https://codembs.com/dmentor/calculate.php';
  var res = await http.post(Uri.parse(url),body: {
    "o" : o,
    "a" : a,
    "b" : b
  });
  return res.body;
}

