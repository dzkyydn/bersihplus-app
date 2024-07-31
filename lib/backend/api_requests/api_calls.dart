import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class RegisterAPICall {
  static Future<ApiCallResponse> call({
    String? numberRT = '',
    String? fullName = '',
    String? numberPhone = '',
    String? emailAddress = '',
    String? passwordCreate = '',
    String? passwordConfirm = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'registerAPI',
      apiUrl: 'https://bersihplus.suburbejitimur.com/API/postRegister',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'numberRT': numberRT,
        'fullName': fullName,
        'numberPhone': numberPhone,
        'emailAddress': emailAddress,
        'passwordCreate': passwordCreate,
        'passwordConfirm': passwordConfirm,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class LoginAPICall {
  static Future<ApiCallResponse> call({
    String? idorname = '',
    String? passwordCreate = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'loginAPI',
      apiUrl: 'https://bersihplus.suburbejitimur.com/API/postLogin',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'idorname': idorname,
        'passwordCreate': passwordCreate,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.userData.phone''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.userData.email''',
      ));
  static String? balance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.userData.balance''',
      ));
  static List? transactions(dynamic response) => getJsonField(
        response,
        r'''$.userTransactions''',
        true,
      ) as List?;
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.userData.name''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.userToken''',
      ));
  static String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.userData.uid''',
      ));
}

class PasswordAPICall {
  static Future<ApiCallResponse> call({
    String? passwordOld = '',
    String? passwordNew = '',
    String? passwordConfirm = '',
    String? numberUID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'passwordAPI',
      apiUrl: 'https://bersihplus.suburbejitimur.com/API/putNewPassword',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'passwordOld': passwordOld,
        'passwordNew': passwordNew,
        'passwordConfirm': passwordConfirm,
        'numberUID': numberUID,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ContactAPICall {
  static Future<ApiCallResponse> call({
    String? numberPhone = '',
    String? emailAddress = '',
    String? numberUID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'contactAPI',
      apiUrl: 'https://bersihplus.suburbejitimur.com/API/putContactInfo',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'numberPhone': numberPhone,
        'emailAddress': emailAddress,
        'numberUID': numberUID,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferAPICall {
  static Future<ApiCallResponse> call({
    String? senderUID = '',
    String? receiverUID = '',
    String? amount = '',
    String? notes = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'transferAPI',
      apiUrl: 'https://bersihplus.suburbejitimur.com/API/transferBalance',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'senderUID': senderUID,
        'receiverUID': receiverUID,
        'amount': amount,
        'notes': notes,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? receiverName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.receiverName''',
      ));
}

class DonationAPICall {
  static Future<ApiCallResponse> call({
    String? senderUID = '',
    String? amount = '',
    String? notes = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'donationAPI',
      apiUrl: 'https://bersihplus.suburbejitimur.com/API/donationBalance',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'senderUID': senderUID,
        'amount': amount,
        'notes': notes,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class TransferProcessAPICall {
  static Future<ApiCallResponse> call({
    String? senderUID = '',
    String? receiverUID = '',
    String? amount = '',
    String? notes = '',
    String? password = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'transferProcessAPI',
      apiUrl:
          'https://bersihplus.suburbejitimur.com/API/processTransferBalance',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'senderUID': senderUID,
        'receiverUID': receiverUID,
        'amount': amount,
        'notes': notes,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? invoiceImage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.invoice_image''',
      ));
}

class DonationProcessAPICall {
  static Future<ApiCallResponse> call({
    String? senderUID = '',
    String? amount = '',
    String? notes = '',
    String? password = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'donationProcessAPI',
      apiUrl:
          'https://bersihplus.suburbejitimur.com/API/processDonationBalance',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'senderUID': senderUID,
        'amount': amount,
        'notes': notes,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? invoiceImage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.invoice_image''',
      ));
}

class ForgotpassAPICall {
  static Future<ApiCallResponse> call({
    String? emailAddress = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'forgotpassAPI',
      apiUrl: 'https://bersihplus.suburbejitimur.com/API/forgotPassword',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'emailAddress': emailAddress,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetItemsAPICall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getItemsAPI',
      apiUrl: 'https://bersihplus.suburbejitimur.com/API/getItems',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? itemName(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? itemPrice(dynamic response) => (getJsonField(
        response,
        r'''$[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? itemSellPrice(dynamic response) => (getJsonField(
        response,
        r'''$[:].sell_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetRtListAPICall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getRtListAPI',
      apiUrl: 'https://bersihplus.suburbejitimur.com/API/getRtList',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? rtNumber(dynamic response) => (getJsonField(
        response,
        r'''$[:].number''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetBannersONEAPICall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getBannersONEAPI',
      apiUrl: 'https://bersihplus.suburbejitimur.com/API/getBanners1',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? bannerPath(dynamic response) => (getJsonField(
        response,
        r'''$[:].image_path''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? bannerNumber(dynamic response) => (getJsonField(
        response,
        r'''$[:].form''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetBannersTWOAPICall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getBannersTWOAPI',
      apiUrl: 'https://bersihplus.suburbejitimur.com/API/getBanners2',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? bannerPath(dynamic response) => (getJsonField(
        response,
        r'''$[:].image_path''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? bannerNumber(dynamic response) => (getJsonField(
        response,
        r'''$[:].form''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetBannerTHREEAPICall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getBannerTHREEAPI',
      apiUrl: 'https://bersihplus.suburbejitimur.com/API/getBanners3',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? bannerPath(dynamic response) => (getJsonField(
        response,
        r'''$[:].image_path''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? bannerNumber(dynamic response) => (getJsonField(
        response,
        r'''$[:].form''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetAnnouncementAPICall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAnnouncementAPI',
      apiUrl: 'https://bersihplus.suburbejitimur.com/API/getAnnouncement',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].message''',
      ));
}

class GetEmailAPICall {
  static Future<ApiCallResponse> call({
    String? inputEmail = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getEmailAPI',
      apiUrl: 'https://bersihplus.suburbejitimur.com/API/getEmail',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'inputEmail': inputEmail,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? subject(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].subject''',
      ));
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].message''',
      ));
  static String? created(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
}

class GetTransfersByUserAPICall {
  static Future<ApiCallResponse> call({
    String? numberUID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getTransfersByUserAPI',
      apiUrl: 'https://bersihplus.suburbejitimur.com/API/getTransfersByUser',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'numberUID': numberUID,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? amount(dynamic response) => (getJsonField(
        response,
        r'''$[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? note(dynamic response) => (getJsonField(
        response,
        r'''$[:].notes''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? invoiceImage(dynamic response) => (getJsonField(
        response,
        r'''$[:].invoice_image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? time(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? colorStatus(dynamic response) => (getJsonField(
        response,
        r'''$[:].color_status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? transferId(dynamic response) => (getJsonField(
        response,
        r'''$[:].transfer_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? all(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
  static List<String>? senderUID(dynamic response) => (getJsonField(
        response,
        r'''$[:].sender_uid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? reeceiverUID(dynamic response) => (getJsonField(
        response,
        r'''$[:].receiver_uid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
