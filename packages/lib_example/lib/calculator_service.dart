import 'package:dio/dio.dart';

class CalculatorServiceLib{

  Future<String> getUrlResponse() async{
    Dio libDio = Dio();
    Response<dynamic> result = await libDio.get("path");
    return "asd 5.3.1";
  }


}