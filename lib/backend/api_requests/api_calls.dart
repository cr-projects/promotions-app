import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ProductsByBrandIdCall {
  static Future<ApiCallResponse> call({
    int? brandId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ProductsByBrandId',
      apiUrl:
          'https://nenxggonfzeiqcqfkqvs.supabase.co/rest/v1/product?brand_id=eq.$brandId&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lbnhnZ29uZnplaXFjcWZrcXZzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5Nzc0ODYsImV4cCI6MjAzODU1MzQ4Nn0.aHPcU05DDwTnH_qtSGUyV_ehNgMGVb0Ja404NlNNjb4',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lbnhnZ29uZnplaXFjcWZrcXZzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5Nzc0ODYsImV4cCI6MjAzODU1MzQ4Nn0.aHPcU05DDwTnH_qtSGUyV_ehNgMGVb0Ja404NlNNjb4',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? producttypeid(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_type_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static String? createdat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
  static bool? active(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].active''',
      ));
  static int? brandid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].brand_id''',
      ));
}

class FinantiaEntitiesByCardAndFinantialEntityTypeCall {
  static Future<ApiCallResponse> call({
    int? cardId,
    int? finantialEntityTypeId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'FinantiaEntitiesByCardAndFinantialEntityType',
      apiUrl:
          'https://nenxggonfzeiqcqfkqvs.supabase.co/rest/v1/finantial_entity_view?card_id=eq.$cardId&finantial_entity_type_id=eq.$finantialEntityTypeId&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lbnhnZ29uZnplaXFjcWZrcXZzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5Nzc0ODYsImV4cCI6MjAzODU1MzQ4Nn0.aHPcU05DDwTnH_qtSGUyV_ehNgMGVb0Ja404NlNNjb4',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lbnhnZ29uZnplaXFjcWZrcXZzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5Nzc0ODYsImV4cCI6MjAzODU1MzQ4Nn0.aHPcU05DDwTnH_qtSGUyV_ehNgMGVb0Ja404NlNNjb4',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class RelPromotionPaymentMediaCall {
  static Future<ApiCallResponse> call({
    int? promotionId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'RelPromotionPaymentMedia',
      apiUrl:
          'https://nenxggonfzeiqcqfkqvs.supabase.co/rest/v1/rel_promotion_payment_media?promotion_id=eq.$promotionId&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lbnhnZ29uZnplaXFjcWZrcXZzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5Nzc0ODYsImV4cCI6MjAzODU1MzQ4Nn0.aHPcU05DDwTnH_qtSGUyV_ehNgMGVb0Ja404NlNNjb4',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lbnhnZ29uZnplaXFjcWZrcXZzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5Nzc0ODYsImV4cCI6MjAzODU1MzQ4Nn0.aHPcU05DDwTnH_qtSGUyV_ehNgMGVb0Ja404NlNNjb4',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? paymentMediaId(dynamic response) => (getJsonField(
        response,
        r'''$[:].payment_media_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? createdat(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? promotionid(dynamic response) => (getJsonField(
        response,
        r'''$[:].promotion_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<bool>? active(dynamic response) => (getJsonField(
        response,
        r'''$[:].active''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
}

class FnPaymentMediaViewCall {
  static Future<ApiCallResponse> call({
    List<int>? idList,
  }) async {
    final id = _serializeList(idList);

    final ffApiRequestBody = '''
{
  "ids": $id
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FnPaymentMediaView',
      apiUrl:
          'https://nenxggonfzeiqcqfkqvs.supabase.co/rest/v1/rpc/fn_getpaymentmedia',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lbnhnZ29uZnplaXFjcWZrcXZzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5Nzc0ODYsImV4cCI6MjAzODU1MzQ4Nn0.aHPcU05DDwTnH_qtSGUyV_ehNgMGVb0Ja404NlNNjb4',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lbnhnZ29uZnplaXFjcWZrcXZzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5Nzc0ODYsImV4cCI6MjAzODU1MzQ4Nn0.aHPcU05DDwTnH_qtSGUyV_ehNgMGVb0Ja404NlNNjb4',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? paymentmediatypeid(dynamic response) => (getJsonField(
        response,
        r'''$[:].payment_media_type_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? cardid(dynamic response) => (getJsonField(
        response,
        r'''$[:].card_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? finantialentityid(dynamic response) => (getJsonField(
        response,
        r'''$[:].finantial_entity_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? finantialentitytypeid(dynamic response) => (getJsonField(
        response,
        r'''$[:].finantial_entity_type_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? paymentmediatypename(dynamic response) => (getJsonField(
        response,
        r'''$[:].payment_media_type_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? cardname(dynamic response) => (getJsonField(
        response,
        r'''$[:].card_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? finantialentityname(dynamic response) => (getJsonField(
        response,
        r'''$[:].finantial_entity_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? finantialentitytypename(dynamic response) =>
      (getJsonField(
        response,
        r'''$[:].finantial_entity_type_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class FnInsertRelPromotionPaymentMediaCall {
  static Future<ApiCallResponse> call({
    int? promotionIdParam,
    List<int>? paymentMediaTypeIdsList,
    int? cardId,
    int? finantialEntityId,
  }) async {
    final paymentMediaTypeIds = _serializeList(paymentMediaTypeIdsList);

    final ffApiRequestBody = '''
{
  "card_id_param": $cardId,
  "finantial_entity_id_param": $finantialEntityId,
  "payment_media_type_ids": $paymentMediaTypeIds,
  "promotion_id_param": $promotionIdParam
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FnInsertRelPromotionPaymentMedia',
      apiUrl:
          'https://nenxggonfzeiqcqfkqvs.supabase.co/rest/v1/rpc/fn_insertrelpromotionpaymentmedia',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lbnhnZ29uZnplaXFjcWZrcXZzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5Nzc0ODYsImV4cCI6MjAzODU1MzQ4Nn0.aHPcU05DDwTnH_qtSGUyV_ehNgMGVb0Ja404NlNNjb4',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lbnhnZ29uZnplaXFjcWZrcXZzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5Nzc0ODYsImV4cCI6MjAzODU1MzQ4Nn0.aHPcU05DDwTnH_qtSGUyV_ehNgMGVb0Ja404NlNNjb4',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FnGetFinantialPaymentMediaCall {
  static Future<ApiCallResponse> call({
    int? promotionId,
  }) async {
    final ffApiRequestBody = '''
{
  "promotion_id_param": $promotionId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FnGetFinantialPaymentMedia',
      apiUrl:
          'https://nenxggonfzeiqcqfkqvs.supabase.co/rest/v1/rpc/fn_getfinantialpaymentmedia',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lbnhnZ29uZnplaXFjcWZrcXZzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5Nzc0ODYsImV4cCI6MjAzODU1MzQ4Nn0.aHPcU05DDwTnH_qtSGUyV_ehNgMGVb0Ja404NlNNjb4',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lbnhnZ29uZnplaXFjcWZrcXZzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5Nzc0ODYsImV4cCI6MjAzODU1MzQ4Nn0.aHPcU05DDwTnH_qtSGUyV_ehNgMGVb0Ja404NlNNjb4',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  static String? createdat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
  static int? paymentmediatypeid(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].payment_media_type_id''',
      ));
  static int? finantialentityid(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].finantial_entity_id''',
      ));
  static bool? active(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].active''',
      ));
  static int? cardid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].card_id''',
      ));
}

class FnInsertRelPromotionDaysCall {
  static Future<ApiCallResponse> call({
    List<int>? daysParamList,
    int? promotionIdParam,
  }) async {
    final daysParam = _serializeList(daysParamList);

    final ffApiRequestBody = '''
{
  "days_param": $daysParam,
  "promotion_id_param": $promotionIdParam
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FnInsertRelPromotionDays',
      apiUrl:
          'https://nenxggonfzeiqcqfkqvs.supabase.co/rest/v1/rpc/fn_insertrelpromotiondays',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lbnhnZ29uZnplaXFjcWZrcXZzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5Nzc0ODYsImV4cCI6MjAzODU1MzQ4Nn0.aHPcU05DDwTnH_qtSGUyV_ehNgMGVb0Ja404NlNNjb4',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lbnhnZ29uZnplaXFjcWZrcXZzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5Nzc0ODYsImV4cCI6MjAzODU1MzQ4Nn0.aHPcU05DDwTnH_qtSGUyV_ehNgMGVb0Ja404NlNNjb4',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FnInsertRelPromotionAditionalPaymentMethodCall {
  static Future<ApiCallResponse> call({
    int? promotionIdParam,
    List<int>? aditionalPaymentMethodIdParamList,
  }) async {
    final aditionalPaymentMethodIdParam =
        _serializeList(aditionalPaymentMethodIdParamList);

    final ffApiRequestBody = '''
{
  "aditional_payment_method_id_param": $aditionalPaymentMethodIdParam,
  "promotion_id_param": $promotionIdParam
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'fnInsertRelPromotionAditionalPaymentMethod',
      apiUrl:
          'https://nenxggonfzeiqcqfkqvs.supabase.co/rest/v1/rpc/fn_insert_rel_promotion_aditional_payment_method',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lbnhnZ29uZnplaXFjcWZrcXZzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5Nzc0ODYsImV4cCI6MjAzODU1MzQ4Nn0.aHPcU05DDwTnH_qtSGUyV_ehNgMGVb0Ja404NlNNjb4',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lbnhnZ29uZnplaXFjcWZrcXZzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5Nzc0ODYsImV4cCI6MjAzODU1MzQ4Nn0.aHPcU05DDwTnH_qtSGUyV_ehNgMGVb0Ja404NlNNjb4',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FnInsertRelUserPaymentMediaCall {
  static Future<ApiCallResponse> call({
    int? userIdParam,
    int? paymentMediaTypeId,
    int? cardIdParam,
    List<int>? finantialEntityIdsParamList,
  }) async {
    final finantialEntityIdsParam = _serializeList(finantialEntityIdsParamList);

    final ffApiRequestBody = '''
{
  "card_id_param": $cardIdParam,
  "finantial_entity_ids_param": $finantialEntityIdsParam,
  "payment_media_type_id_param": $paymentMediaTypeId,
  "user_id_param": $userIdParam
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'fnInsertRelUserPaymentMedia',
      apiUrl:
          'https://nenxggonfzeiqcqfkqvs.supabase.co/rest/v1/rpc/fn_insertreluserpaymentmedia',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lbnhnZ29uZnplaXFjcWZrcXZzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5Nzc0ODYsImV4cCI6MjAzODU1MzQ4Nn0.aHPcU05DDwTnH_qtSGUyV_ehNgMGVb0Ja404NlNNjb4',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5lbnhnZ29uZnplaXFjcWZrcXZzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5Nzc0ODYsImV4cCI6MjAzODU1MzQ4Nn0.aHPcU05DDwTnH_qtSGUyV_ehNgMGVb0Ja404NlNNjb4',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
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
  if (item is DocumentReference) {
    return item.path;
  }
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
