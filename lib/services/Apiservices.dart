import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:loginpagesample/podos/empfulldetails.dart';

class MyApi {

static Future<List<dynamic>> getemplogindetails({username}) async{
    final usernameResponse=await http
        .get(Uri.parse('http://15.185.46.105:5000/api/users/$username'))
        .timeout(const Duration(seconds: 10));
    print(usernameResponse.statusCode);
    if(usernameResponse.statusCode==200){
      dynamic response=(jsonDecode(usernameResponse.body))['recordset'];
      print(response);
      return response;
    }else
      {
        return null;
      }
  }



   static Future<List<Recordset>> getfullempdetails({empno}) async {
    try {
      final response = await http.get(Uri
          .parse("http://15.185.46.105:5000/api/search/employee/$empno")).timeout(Duration(seconds: 10));

      if (response.statusCode == 200) {
        final Employeefulldetails employeefulldetails =
            employeefulldetailsFromJson(response.body);
        final List<Recordset> recordset = employeefulldetails.recordset;
        return recordset;
      } else {
        return <Recordset>[];
      }
    }on SocketException catch(_){
      Fluttertoast.showToast(msg: "Internet is disabled\nplease turn it On",toastLength: Toast.LENGTH_LONG);
    }
    on TimeoutException catch(_){
      Fluttertoast.showToast(msg: "Yateem Ac server has gone down\nPlease try again",gravity: ToastGravity.CENTER);
      return <Recordset>[];
    }
    catch (e) {
      return <Recordset>[];
    }
  }
}
