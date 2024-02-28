import 'dart:convert';

import 'package:http/http.dart'as http;
class Myclient{

  static  Future send(String phone , String msg) async{



    Uri uri = Uri.parse("https://services.mtnsyr.com:7443/General/MTNSERVICES/ConcatenatedSender.aspx?User=qiuiuii729&Pass=qghd171219&From=Quick%20Order&Gsm=${phone}&Msg=${msg}&Lang=1");
    print(uri.toString());

    http.Response response = await http.get(uri);
    String jsonsDataString = response.body.toString();

    var    _data = jsonDecode(jsonsDataString);
    print(_data.toString());
    return _data;

  }

  static  Future bloak(String phone ) async{



    Uri uri = Uri.parse("https://browse.quickordersy.com/mhd/bloak_phone.php?phone=${phone}");
    print(uri.toString());

    http.Response response = await http.get(uri);
    String jsonsDataString = response.body.toString();

    var    _data = jsonDecode(jsonsDataString);
    print(_data.toString());
    return _data;

  }
//https://browse.quickordersy.com/mhd/add_phone.php/

  static  Future add_product(
      String phone ,String code,) async {
    var data = {

      "phone" : phone,

      "code" : code,

    };
    Uri url =
    Uri.parse( "https://browse.quickordersy.com/mhd/add_phone.php/");
    var reesponse = await http.post(url, body: data);
    var responsebody = jsonDecode(reesponse.body);

  }
}