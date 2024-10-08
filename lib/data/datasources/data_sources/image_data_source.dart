import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:gapopa/data/datasources/endpoint/image_endpoint.dart';
import 'package:gapopa/data/models/image_request/image_request_model.dart';
import 'package:gapopa/data/models/image_response/image_response_model.dart';

abstract class ImageDataSource {
  Future<List<ImageResponseModel>> getImages(ImageRequestModel request);
}

class ImageDataSourceImpl implements ImageDataSource {
  final Dio dio;
  ImageDataSourceImpl(this.dio);
  @override
  Future<List<ImageResponseModel>> getImages(ImageRequestModel request) async {
    final response = await dio.get(ImageEndpoint.imageUrl, queryParameters: request.toJson());
    return response.data["hits"]
        .map<ImageResponseModel>((data) => ImageResponseModel.fromJson(data))
        .toList();
  }

}