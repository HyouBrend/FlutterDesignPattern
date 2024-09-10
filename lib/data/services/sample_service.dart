import 'package:dio/dio.dart';
import 'package:flutter_design_pattern/data/models/sample_model.dart';
import 'package:flutter_design_pattern/helpers/network/api_helper.dart';

class MsSampleService {
  final ApiHelper apiHelper;

  MsSampleService({required this.apiHelper});

  Future<MsSampleData> getAllSample() async {
    try {
      final result = await apiHelper.get(
        url: "https://api.example.com/sample",
      );
      return MsSampleData.fromJson(result);
    } on DioError catch (e) {
      throw Exception('Failed to load sample data: ${e.message}');
    }
  }
}
