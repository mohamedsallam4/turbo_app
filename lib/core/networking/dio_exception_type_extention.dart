// import 'package:dio/dio.dart';
// import 'package:propy/networking/api_error_model.dart';
//TODO::
//TODO::
//TODO::
//TODO::
// extension DioExceptionTypeExtention on DioException {
//   ApiErrorModel when({
//     required ApiErrorModel Function() connectionError,
//     required ApiErrorModel Function() connectionTimeout,
//     required ApiErrorModel Function() sendTimeOut,
//     required ApiErrorModel Function() receiveTimeout,
//     required ApiErrorModel Function() badCertificate,
//     required ApiErrorModel Function() badResponse,
//     required ApiErrorModel Function() cancel,
//     required ApiErrorModel Function() unKnown,
//   }) {
//     if (type == DioExceptionType.connectionError) {
//       return connectionError();
//     } else if (type == DioExceptionType.connectionTimeout) {
//       return connectionTimeout();
//     } else if (type == DioExceptionType.sendTimeout) {
//       return sendTimeOut();
//     } else if (type == DioExceptionType.receiveTimeout) {
//       return receiveTimeout();
//     } else if (type == DioExceptionType.badCertificate) {
//       return badCertificate();
//     } else if (type == DioExceptionType.badResponse) {
//       return badResponse();
//     } else if (type == DioExceptionType.cancel) {
//       return cancel();
//     } else  {
//       return unKnown();
//     }
//   }
// }
