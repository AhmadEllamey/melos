import 'package:dio/dio.dart';

class CalculatorService{
  Future<String> getUrlResponse() async{
    Dio libDio = Dio();
    Response<dynamic> result = await libDio.get('https://pub.dev/packages/coverage/versions');
    print('-----> ${result.statusMessage}');
    return 'asd 4.0.6';
  }


}