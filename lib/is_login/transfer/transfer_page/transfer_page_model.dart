import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'transfer_page_widget.dart' show TransferPageWidget;
import 'package:flutter/material.dart';

class TransferPageModel extends FlutterFlowModel<TransferPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for receiverUID widget.
  FocusNode? receiverUIDFocusNode;
  TextEditingController? receiverUIDTextController;
  String? Function(BuildContext, String?)? receiverUIDTextControllerValidator;
  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  // State field(s) for notes widget.
  FocusNode? notesFocusNode;
  TextEditingController? notesTextController;
  String? Function(BuildContext, String?)? notesTextControllerValidator;
  // Stores action output result for [Backend Call - API (transferAPI)] action in Button widget.
  ApiCallResponse? apiResultTransfer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    receiverUIDFocusNode?.dispose();
    receiverUIDTextController?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();

    notesFocusNode?.dispose();
    notesTextController?.dispose();
  }
}
