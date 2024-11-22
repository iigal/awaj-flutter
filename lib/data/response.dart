import 'package:freezed_annotation/freezed_annotation.dart';
part 'response.freezed.dart';
part 'response.g.dart';

@freezed
class ApiResponse with _$ApiResponse {
  factory ApiResponse({
    required bool success,
    String? message,
    required List<dynamic> data,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json) => _$ApiResponseFromJson(json);
}

@Freezed(genericArgumentFactories: true)
class PaginatedResponse<T> with _$PaginatedResponse<T> {
  @JsonSerializable(genericArgumentFactories: true, fieldRename: FieldRename.snake)
  const factory PaginatedResponse({
    int? page,
    int? perPage,
    int? totalPages,
    int? totalItems,
    List<T>? items,
  }) = _PaginatedResponse;
  // factory Response.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) => _$ResponseFromJson<T>(json, fromJsonT);
}
