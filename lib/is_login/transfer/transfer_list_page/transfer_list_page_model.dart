import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'transfer_list_page_widget.dart' show TransferListPageWidget;
import 'package:flutter/material.dart';

class TransferListPageModel extends FlutterFlowModel<TransferListPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getTransfersByUserAPI)] action in TransferListPage widget.
  ApiCallResponse? apiResult8x6;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
