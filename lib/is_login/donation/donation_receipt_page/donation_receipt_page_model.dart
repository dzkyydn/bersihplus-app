import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'donation_receipt_page_widget.dart' show DonationReceiptPageWidget;
import 'package:flutter/material.dart';

class DonationReceiptPageModel
    extends FlutterFlowModel<DonationReceiptPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (loginAPI)] action in Button widget.
  ApiCallResponse? apiResultBackHome;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
