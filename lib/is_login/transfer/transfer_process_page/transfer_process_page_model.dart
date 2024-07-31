import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'transfer_process_page_widget.dart' show TransferProcessPageWidget;
import 'package:flutter/material.dart';

class TransferProcessPageModel
    extends FlutterFlowModel<TransferProcessPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (transferProcessAPI)] action in TransferProcessPage widget.
  ApiCallResponse? apiResultTransferProcess;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
