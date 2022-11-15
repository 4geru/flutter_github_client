import 'package:dio/dio.dart';

String GITHUB_TOKEN = "XXX";

class GithubDio {
  GithubDio() {}

  fetch() async {
    Response response;
    var dio = Dio();
    dio.options.headers = {'Accept': 'application/vnd.github+json'};
    dio.options.headers = {'Authorization': 'Bearer $GITHUB_TOKEN'};
    response = await dio.get('https://api.github.com/users/4geru/repos');
    print(response.data.toString());
  }
}
