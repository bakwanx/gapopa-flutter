
class NetworkException implements Exception {
  String? message;
  NetworkException({this.message});
}

class DataException implements Exception {
  String? message;
  DataException({this.message});
}

class FormException implements Exception {
  String? message;
  FormException({this.message});
}

class PermissionException implements Exception {
  String? message;
  PermissionException({this.message});
}