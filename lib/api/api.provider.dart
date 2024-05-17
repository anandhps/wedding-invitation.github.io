import 'dart:convert';
import 'dart:developer';
import 'package:wedding/repositories.dart';

class ApiProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.followRedirects = true;
    httpClient.baseUrl = ApiConfig.baseUrl;
    httpClient.defaultContentType = 'application/x-www-form-urlencoded';
    httpClient.timeout = const Duration(seconds: 60);
    httpClient.addRequestModifier<dynamic>((request) {
      final token =
          'Basic ${base64.encode(utf8.encode('${ApiConfig.username}:${ApiConfig.password}'))}';
      request.headers['Authorization'] = token;
      request.headers['Accept'] = '*/*';
      request.headers['Access-Control-Allow-Origin'] = '*';
      request.headers['Access-Control-Allow-Methods'] = '*';
      return request;
    });

    httpClient.maxAuthRetries = 3;
  }


  Future<List<CommentModel>> fetchComment() async {
    try {
      final response = await get(ApiEndPoints.getComments);
      if (response.status.hasError) {
        return Future.error(
            response.statusText ?? 'An error occurred while loading comments');
      } else {
        if (response.body['status'] == false) {
          return Future.error(response.body['message'] ?? 'No comment found');
        } else {
          final comments = response.body['data'] as List;
          return comments.map((e) => CommentModel.fromJson(e)).toList();
        }
      }
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<String> sendComment({
    required String name,
    required String comment,
  }) async {
    final data = {
      'full_name': name,
      'comment': comment,
    };
    try {
      final response = await request(
        ApiEndPoints.submitComment,
        'POST',
        contentType: 'application/json',
        body: data,
      );
      log('result: ${response.body}');
      log('result: ${response.statusCode}');
      if (response.status.hasError) {
        return Future.error(
            response.statusText ?? 'An error occurred while posting a comment');
      } else {
        if (response.body['status'] == false) {
          return Future.error(response.body['message']);
        } else {
          return Future.value(response.body['message']);
        }
      }
    } catch (e) {
      return Future.error(e.toString());
    }
  }

}
