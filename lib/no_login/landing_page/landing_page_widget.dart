import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/information_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:local_auth/local_auth.dart';
import 'landing_page_model.dart';
export 'landing_page_model.dart';

class LandingPageWidget extends StatefulWidget {
  const LandingPageWidget({super.key});

  @override
  State<LandingPageWidget> createState() => _LandingPageWidgetState();
}

class _LandingPageWidgetState extends State<LandingPageWidget> {
  late LandingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LandingPageModel());
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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFE3F1EB),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/bp_panjang-fix.png',
                          width: 300.0,
                          height: 60.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/Mobile_inbox-amico.png',
                    width: 300.0,
                    height: 300.0,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.goNamed('LoginPage');
                          },
                          child: Material(
                            color: Colors.transparent,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            child: Container(
                              width: 234.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).jade,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'MASUK',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Builder(
                        builder: (context) => InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            var shouldSetState = false;
                            final localAuth = LocalAuthentication();
                            bool isBiometricSupported =
                                await localAuth.isDeviceSupported();

                            if (isBiometricSupported) {
                              _model.fingerprint = await localAuth.authenticate(
                                  localizedReason:
                                      'Silahkan gunakan sidik jari Anda untuk masuk ke akun terakhir.');
                              setState(() {});
                            }

                            shouldSetState = true;
                            if (_model.fingerprint != true) {
                              Navigator.pop(context);

                              context.goNamed('LandingPage');

                              if (shouldSetState) setState(() {});
                              return;
                            }
                            if (!(currentAuthenticationToken != null &&
                                currentAuthenticationToken != '')) {
                              ScaffoldMessenger.of(context).clearSnackBars();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: const Text(
                                    'Anda belum pernah login. Silahkan login untuk masuk atau lakukan registrasi untuk membuat akun baru.',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).error,
                                ),
                              );

                              context.goNamed('LoginPage');

                              if (shouldSetState) setState(() {});
                              return;
                            }
                            _model.apiResultpvo = await LoginAPICall.call(
                              idorname: currentUserData?.uid,
                              passwordCreate: currentUserData?.password,
                            );

                            shouldSetState = true;
                            if ((_model.apiResultpvo?.succeeded ?? true)) {
                              ScaffoldMessenger.of(context).clearSnackBars();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    getJsonField(
                                      (_model.apiResultpvo?.jsonBody ?? ''),
                                      r'''$.message''',
                                    ).toString(),
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).jade,
                                ),
                              );
                            } else {
                              if (shouldSetState) setState(() {});
                              return;
                            }

                            FFAppState().userTransactionsLatest = getJsonField(
                              (_model.apiResultpvo?.jsonBody ?? ''),
                              r'''$.userTransactions.latest''',
                            );
                            FFAppState().userTransactionsLongest = getJsonField(
                              (_model.apiResultpvo?.jsonBody ?? ''),
                              r'''$.userTransactions.longest''',
                            );
                            FFAppState().userTransactions = getJsonField(
                              (_model.apiResultpvo?.jsonBody ?? ''),
                              r'''$.userTransactions''',
                            );
                            FFAppState().update(() {});

                            context.goNamed(
                              'HomePage',
                              queryParameters: {
                                'balance': serializeParam(
                                  getJsonField(
                                    (_model.apiResultpvo?.jsonBody ?? ''),
                                    r'''$.userData.balance''',
                                  ).toString(),
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );

                            _model.apiResultAnnouncement =
                                await GetAnnouncementAPICall.call();

                            shouldSetState = true;
                            if (getJsonField(
                                  (_model.apiResultAnnouncement?.jsonBody ??
                                      ''),
                                  r'''$[:].message''',
                                ) ==
                                null) {
                              if (shouldSetState) setState(() {});
                              return;
                            }
                            HapticFeedback.lightImpact();
                            showDialog(
                              barrierColor: Colors.transparent,
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: const AlignmentDirectional(0.0, -1.0)
                                      .resolve(Directionality.of(context)),
                                  child: GestureDetector(
                                    onTap: () => _model
                                            .unfocusNode.canRequestFocus
                                        ? FocusScope.of(context)
                                            .requestFocus(_model.unfocusNode)
                                        : FocusScope.of(context).unfocus(),
                                    child: InformationWidget(
                                      message: getJsonField(
                                        (_model.apiResultAnnouncement
                                                ?.jsonBody ??
                                            ''),
                                        r'''$[:].message''',
                                      ).toString(),
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));

                            if (shouldSetState) setState(() {});
                          },
                          child: Material(
                            color: Colors.transparent,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).jade,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: const FaIcon(
                                FontAwesomeIcons.fingerprint,
                                color: Colors.white,
                                size: 24.0,
                              ),
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
    );
  }
}
