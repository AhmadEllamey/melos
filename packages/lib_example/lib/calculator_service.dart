import 'package:dio/dio.dart';

class CalculatorServiceLib{

  Future<String> getUrlResponse() async{
    Dio libDio = Dio();
    Response<dynamic> result = await libDio.get('https://pub.dev/packages/coverage/versions');
    print('-----> ${result.statusMessage}');
    return 'asd 5.3.1';
  }


}