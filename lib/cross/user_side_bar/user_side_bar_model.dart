import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_side_bar_widget.dart' show UserSideBarWidget;
import 'package:flutter/material.dart';

class UserSideBarModel extends FlutterFlowModel<UserSideBarWidget> {
  ///  Local state fields for this component.

  UsersRow? userData;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in userSideBar widget.
  List<UsersRow>? userDataResp;
  // Stores action output result for [Backend Call - Query Rows] action in ContainerPaymentMethods widget.
  List<RelUserPaymentMediaRow>? relUserPaymentMedia;
  // Stores action output result for [Action Block - getTDBankFinantialEntitiesSelected] action in ContainerPaymentMedia widget.
  List<FinantialEntityRow>? finantialEntities;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future checkCashValue(BuildContext context) async {
    List<RelUserPaymentMediaRow>? cashPayment;

    cashPayment = await RelUserPaymentMediaTable().queryRows(
      queryFn: (q) => q
          .eq(
            'user_id',
            userDataResp?.first.id,
          )
          .eq(
            'payment_media_id',
            2,
          ),
    );
    FFAppState().checkCashValue =
        (cashPayment).isNotEmpty ? true : false;
  }

  Future checkAppCashValue(BuildContext context) async {
    List<RelUserPaymentMediaRow>? cashPayment;

    cashPayment = await RelUserPaymentMediaTable().queryRows(
      queryFn: (q) => q
          .eq(
            'user_id',
            userDataResp?.first.id,
          )
          .eq(
            'payment_media_id',
            2,
          ),
    );
    FFAppState().checkCashValue =
        (cashPayment).isNotEmpty ? true : false;
  }
}
