
import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;
class Userrepository{
  var url=  Uri.parse("https://dog.ceo/api/breeds/image/random");
 Future<Dog> getdog()async{
    Response response  =await http.get(url);
      log('api call started');
    if(response.statusCode==200){
        log('api call 200');
      final  result=jsonDecode(response.body);
     var finalresult= dogFromJson(jsonEncode(result));
     log('api call ok');
return finalresult;
    }else{
      log('api call ok alla');
      throw Exception( response.reasonPhrase);
    }
  }
}



Dog dogFromJson(String str) => Dog.fromJson(json.decode(str));
String dogToJson(Dog data) => json.encode(data.toJson());

class Dog {
    Dog({
        this.message,
        this.status,
    });

    String? message;
    String? status;

    factory Dog.fromJson(Map<String, dynamic> json) => Dog(
        message: json["message"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "status": status,
    };
}
