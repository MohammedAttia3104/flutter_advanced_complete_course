import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;
  final bool? status;


  ApiErrorModel({this.message, this.code, this.status});

  factory ApiErrorModel.fromJson(Map<String, String>json) => _$ApiErrorModelFromJson(json);
}
