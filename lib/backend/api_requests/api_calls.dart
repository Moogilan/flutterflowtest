import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class UpdateNameCall {
  static Future<ApiCallResponse> call({
    String userName = '',
    String userJob = '',
  }) {
    final body = '''
{
  "name": "${userName}",
  "job": "${userJob}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateName',
      apiUrl: 'https://reqres.in/api/users/2',
      callType: ApiCallType.PUT,
      headers: {},
      params: {
        'userName': userName,
        'userJob': userJob,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class GetSingleUserCall {
  static Future<ApiCallResponse> call({
    String userId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getSingleUser',
      apiUrl: 'https://reqres.in/api/users/${userId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class CreateUserCall {
  static Future<ApiCallResponse> call({
    String userName = '',
    String userJob = '',
  }) {
    final body = '''
{
  "name": "${userName}",
  "job": "${userJob}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create User',
      apiUrl: 'https://reqres.in/api/users',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'userName': userName,
        'userJob': userJob,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class TestNameGenderCall {
  static Future<ApiCallResponse> call({
    String name = 'Carmen',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'test name gender',
      apiUrl: 'https://api.genderize.io/?name=${name}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.name''',
      );
  static dynamic gender(dynamic response) => getJsonField(
        response,
        r'''$.gender''',
      );
}

class UpdateSpecificNameCall {
  static Future<ApiCallResponse> call({
    String userName = '',
    String userJob = '',
  }) {
    final body = '''
{
  "name": "${userName}",
  "job": "${userJob}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateSpecificName',
      apiUrl: 'https://reqres.in/api/users/2',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {
        'userName': userName,
        'userJob': userJob,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class DeleteUserCall {
  static Future<ApiCallResponse> call({
    String userId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'DeleteUser',
      apiUrl: 'https://reqres.in/api/users/${userId}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}
