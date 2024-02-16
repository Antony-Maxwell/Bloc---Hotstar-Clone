import 'package:dio/dio.dart';
import 'package:mini_project/core/constants/strings.dart';
import 'package:mini_project/domain/core/api_end_points.dart';
import 'package:mini_project/infrastructure/api_key.dart';

Future<void>postDataToTmdb()async{
  try{
    final Response response = await Dio(BaseOptions()).post(
      ApiEndPoints.watchList,
      options: Options(
        headers: {
          'Authorization': 'Bearer $accessToken',
          'content-type': 'application/json'
        },
      ),
      data: {
        'media_type':'movie',
        'media_id':11,
        'watchlist':true,
      },
      );

      if(response.statusCode == 200 || response.statusCode == 201){
        print('Post request successfull');
        print('Response :${response.data}');
      }else{
        print('Request failed with status code : ${response.statusCode}');
        print('Response : ${response.data}');
      }
  }catch (e){
    print('Exception caught during POST request: $e');
  }
}