
import 'error_model.dart';

class RepositoryModel {
  dynamic data;
  ErrorModel? errorModel;

  RepositoryModel({
    this.data,
    this.errorModel,
  });

  bool hasError() => errorModel != null;
}
