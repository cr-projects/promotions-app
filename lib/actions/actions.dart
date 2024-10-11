import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import 'package:flutter/material.dart';

Future editViewPromotion(BuildContext context) async {}

Future<List<FinantialEntityRow>?> getTDBankFinantialEntitiesSelected(
    BuildContext context) async {
  List<UsersRow>? userData;
  List<RelUserPaymentMediaRow>? tDPaymentMedia;
  List<PaymentMediaRow>? finantialEntityIdPaymentMediaTDSel;
  List<FinantialEntityRow>? finantialEntityIds;

  userData = await UsersTable().queryRows(
    queryFn: (q) => q.eq(
      'uid',
      currentUserUid,
    ),
  );
  // TDPaymentMediaSelected
  tDPaymentMedia = await RelUserPaymentMediaTable().queryRows(
    queryFn: (q) => q
        .neq(
          'payment_media_id',
          2,
        )
        .neq(
          'payment_media_id',
          4,
        )
        .eq(
          'user_id',
          userData?.first.id,
        ),
  );
  // FinantialEntityIdPaymentMediaTDSel
  finantialEntityIdPaymentMediaTDSel = await PaymentMediaTable().queryRows(
    queryFn: (q) => q
        .in_(
          'id',
          tDPaymentMedia!.map((e) => e.paymentMediaId).toList(),
        )
        .eq(
          'payment_media_type_id',
          5,
        ),
  );
  finantialEntityIds = await FinantialEntityTable().queryRows(
    queryFn: (q) => q.in_(
      'id',
      finantialEntityIdPaymentMediaTDSel!
          .map((e) => e.finantialEntityId)
          .toList(),
    ),
  );

  return null;
}
