import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'donation_page_widget.dart' show DonationPageWidget;
import 'package:flutter/material.dart';

class DonationPageModel extends FlutterFlowModel<DonationPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  // State field(s) for notes widget.
  FocusNode? notesFocusNode;
  TextEditingController? notesTextController;
  String? Function(BuildContext, String?)? notesTextControllerValidator;
  // Stores action output result for [Backend Call - API (donationAPI)] action in Button widget.
  ApiCallResponse? apiResultDonation;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    amountFocusNode?.dispose();
    amountTextController?.dispose();

    notesFocusNode?.dispose();
    notesTextController?.dispose();
  }
}
