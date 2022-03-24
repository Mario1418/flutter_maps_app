import 'package:dio/dio.dart';

const accessPlaceToken =
    'pk.eyJ1IjoiYXZtMTQxMyIsImEiOiJja3Y0ZGw0eG04cDN6MndxNjByanp0bTB0In0.a0MA3P8jrcYoPSPrPR7LNQ';

class PlacesInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({
      'access_token': accessPlaceToken,
      'language': 'es',
      //'limit': 7,
    });

    super.onRequest(options, handler);
  }
}
