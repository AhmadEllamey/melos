import 'package:dio/dio.dart';

class CalculatorService{
  Future<String> getUrlResponse() async{
    Dio libDio = Dio();
    Response<dynamic> result = await libDio.get("path");
    return "asd 4.0.6";
  }


}