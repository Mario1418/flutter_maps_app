import 'package:dio/dio.dart';

const accessToken =
    'pk.eyJ1IjoiYXZtMTQxMyIsImEiOiJja3Y0ZGw0eG04cDN6MndxNjByanp0bTB0In0.a0MA3P8jrcYoPSPrPR7LNQ';

class TrafficInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({
      'alternatives': true,
      'geometries': 'polyline6',
      'overview': 'simplified',
      'steps': false,
      'access_token': accessToken,
      'language': 'es'
    });

    super.onRequest(options, handler);
  }
}
