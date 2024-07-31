import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'donation_process_page_widget.dart' show DonationProcessPageWidget;
import 'package:flutter/material.dart';

class DonationProcessPageModel
    extends FlutterFlowModel<DonationProcessPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (donationProcessAPI)] action in DonationProcessPage widget.
  ApiCallResponse? apiResultDonationProcess;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
