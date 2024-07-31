import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'donation_process_page_model.dart';
export 'donation_process_page_model.dart';

class DonationProcessPageWidget extends StatefulWidget {
  const DonationProcessPageWidget({
    super.key,
    required this.senderUIDProcess,
    required this.amountProcess,
    this.notesProcess,
    required this.passwordProcess,
  });

  final String? senderUIDProcess;
  final String? amountProcess;
  final String? notesProcess;
  final String? passwordProcess;

  @override
  State<DonationProcessPageWidget> createState() =>
      _DonationProcessPageWidgetState();
}

class _DonationProcessPageWidgetState extends State<DonationProcessPageWidget> {
  late DonationProcessPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DonationProcessPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultDonationProcess = await DonationProcessAPICall.call(
        senderUID: widget.senderUIDProcess,
        amount: widget.amountProcess,
        notes: widget.notesProcess,
        password: widget.passwordProcess,
      );

      if (!(_model.apiResultDonationProcess?.succeeded ?? true)) {
        return;
      }

      context.goNamed(
        'DonationReceiptPage',
        queryParameters: {
          'invoiceImage': serializeParam(
            getJsonField(
              (_model.apiResultDonationProcess?.jsonBody ?? ''),
              r'''$.invoice_image''',
            ).toString().toString(),
            ParamType.String,
          ),
          'message': serializeParam(
            getJsonField(
              (_model.apiResultDonationProcess?.jsonBody ?? ''),
              r'''$.message''',
            ),
            ParamType.JSON,
          ),
        }.withoutNulls,
      );
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: const Color(0xFFE3F1EB),
          body: SafeArea(
            top: true,
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/In_progress-amico.png',
                            width: 300.0,
                            height: 258.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: Text(
                              'Tunggu ya, donasi posyandu sedang diproses..',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF8F8F8F),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
