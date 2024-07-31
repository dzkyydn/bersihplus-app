import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/information_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({super.key});

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    _model.idornameTextController ??=
        TextEditingController(text: loggedIn ? currentUserData?.uid : null);
    _model.idornameFocusNode ??= FocusNode();

    _model.passwordCreateTextController ??= TextEditingController();
    _model.passwordCreateFocusNode ??= FocusNode();
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
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
                            alignment: const Alignment(0.0, 0.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/mobile_login.png',
                            width: 300.0,
                            height: 200.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'Login ke akun Anda',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 5.0, 8.0, 0.0),
                    child: Text(
                      'Silahkan masuk menggunakan Nama Pengguna atau ID Pengguna yang sudah terdaftar. Pastikan Anda memasukkan kata sandi dengan benar.',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: const Color(0xFF8F8F8F),
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.idornameTextController,
                            focusNode: _model.idornameFocusNode,
                            autofocus: true,
                            textInputAction: TextInputAction.next,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Nama / ID Pengguna',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                              hintText: 'Masukkan Nama atau ID Pengguna',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF8F8F8F),
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF1BB273),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                            validator: _model.idornameTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 15.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.passwordCreateTextController,
                            focusNode: _model.passwordCreateFocusNode,
                            autofocus: true,
                            textInputAction: TextInputAction.done,
                            obscureText: !_model.passwordCreateVisibility,
                            decoration: InputDecoration(
                              labelText: 'Kata Sandi',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                              hintText: 'Masukkan kata sandi ',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF8F8F8F),
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF1BB273),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => _model.passwordCreateVisibility =
                                      !_model.passwordCreateVisibility,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  _model.passwordCreateVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  size: 20.0,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                            validator: _model
                                .passwordCreateTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 8.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('ForgotPasswordPage');
                                  },
                                  child: Text(
                                    'Lupa kata sandi?',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFF1BB273),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
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
                  if (!loggedIn)
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          var shouldSetState = false;
                          _model.apiResultFalse = await LoginAPICall.call(
                            idorname: _model.idornameTextController.text,
                            passwordCreate:
                                _model.passwordCreateTextController.text,
                          );

                          shouldSetState = true;
                          if ((_model.apiResultFalse?.succeeded ?? true)) {
                            ScaffoldMessenger.of(context).clearSnackBars();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  getJsonField(
                                    (_model.apiResultFalse?.jsonBody ?? ''),
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
                            ScaffoldMessenger.of(context).clearSnackBars();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  getJsonField(
                                    (_model.apiResultFalse?.jsonBody ?? ''),
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
                                    FlutterFlowTheme.of(context).error,
                              ),
                            );
                            if (shouldSetState) setState(() {});
                            return;
                          }

                          FFAppState().userTransactionsLatest = getJsonField(
                            (_model.apiResultFalse?.jsonBody ?? ''),
                            r'''$.userTransactions.latest''',
                          );
                          FFAppState().userTransactionsLongest = getJsonField(
                            (_model.apiResultFalse?.jsonBody ?? ''),
                            r'''$.userTransactions.longest''',
                          );
                          FFAppState().userTransactions = getJsonField(
                            (_model.apiResultFalse?.jsonBody ?? ''),
                            r'''$.userTransactions''',
                          );
                          FFAppState().update(() {});
                          GoRouter.of(context).prepareAuthEvent();
                          await authManager.signIn(
                            authenticationToken: getJsonField(
                              (_model.apiResultFalse?.jsonBody ?? ''),
                              r'''$.userToken''',
                            ).toString(),
                            userData: UserStruct(
                              uid: getJsonField(
                                (_model.apiResultFalse?.jsonBody ?? ''),
                                r'''$.userData.uid''',
                              ).toString(),
                              phone: getJsonField(
                                (_model.apiResultFalse?.jsonBody ?? ''),
                                r'''$.userData.phone''',
                              ).toString(),
                              email: getJsonField(
                                (_model.apiResultFalse?.jsonBody ?? ''),
                                r'''$.userData.email''',
                              ).toString(),
                              balance: getJsonField(
                                (_model.apiResultFalse?.jsonBody ?? ''),
                                r'''$.userData.balance''',
                              ).toString(),
                              name: getJsonField(
                                (_model.apiResultFalse?.jsonBody ?? ''),
                                r'''$.userData.name''',
                              ).toString(),
                              password:
                                  _model.passwordCreateTextController.text,
                            ),
                          );

                          context.goNamedAuth(
                            'HomePageWalkthrough',
                            context.mounted,
                            queryParameters: {
                              'balance': serializeParam(
                                currentUserData?.balance,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );

                          if (shouldSetState) setState(() {});
                        },
                        text: 'MASUK',
                        icon: const FaIcon(
                          FontAwesomeIcons.signInAlt,
                        ),
                        options: FFButtonOptions(
                          width: 330.0,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFF1BB273),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                          elevation: 2.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                          hoverColor: FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                    ),
                  if (loggedIn)
                    Builder(
                      builder: (context) => Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            var shouldSetState = false;
                            _model.apiResultTrue = await LoginAPICall.call(
                              idorname: _model.idornameTextController.text,
                              passwordCreate:
                                  _model.passwordCreateTextController.text,
                            );

                            shouldSetState = true;
                            if ((_model.apiResultTrue?.succeeded ?? true)) {
                              ScaffoldMessenger.of(context).clearSnackBars();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    getJsonField(
                                      (_model.apiResultTrue?.jsonBody ?? ''),
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
                              ScaffoldMessenger.of(context).clearSnackBars();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    getJsonField(
                                      (_model.apiResultTrue?.jsonBody ?? ''),
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
                                      FlutterFlowTheme.of(context).error,
                                ),
                              );
                              if (shouldSetState) setState(() {});
                              return;
                            }

                            FFAppState().userTransactionsLatest = getJsonField(
                              (_model.apiResultTrue?.jsonBody ?? ''),
                              r'''$.userTransactions.latest''',
                            );
                            FFAppState().userTransactionsLongest = getJsonField(
                              (_model.apiResultTrue?.jsonBody ?? ''),
                              r'''$.userTransactions.longest''',
                            );
                            FFAppState().userTransactions = getJsonField(
                              (_model.apiResultTrue?.jsonBody ?? ''),
                              r'''$.userTransactions''',
                            );
                            FFAppState().update(() {});
                            GoRouter.of(context).prepareAuthEvent();
                            await authManager.signIn(
                              authenticationToken: getJsonField(
                                (_model.apiResultTrue?.jsonBody ?? ''),
                                r'''$.userToken''',
                              ).toString(),
                              userData: UserStruct(
                                uid: getJsonField(
                                  (_model.apiResultTrue?.jsonBody ?? ''),
                                  r'''$.userData.uid''',
                                ).toString(),
                                phone: getJsonField(
                                  (_model.apiResultTrue?.jsonBody ?? ''),
                                  r'''$.userData.phone''',
                                ).toString(),
                                email: getJsonField(
                                  (_model.apiResultTrue?.jsonBody ?? ''),
                                  r'''$.userData.email''',
                                ).toString(),
                                balance: getJsonField(
                                  (_model.apiResultTrue?.jsonBody ?? ''),
                                  r'''$.userData.balance''',
                                ).toString(),
                                name: getJsonField(
                                  (_model.apiResultTrue?.jsonBody ?? ''),
                                  r'''$.userData.name''',
                                ).toString(),
                                password:
                                    _model.passwordCreateTextController.text,
                              ),
                            );

                            context.goNamedAuth(
                              'HomePage',
                              context.mounted,
                              queryParameters: {
                                'balance': serializeParam(
                                  currentUserData?.balance,
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
                          text: 'MASUK',
                          icon: const FaIcon(
                            FontAwesomeIcons.signInAlt,
                          ),
                          options: FFButtonOptions(
                            width: 330.0,
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF1BB273),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: false,
                                ),
                            elevation: 2.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                            hoverColor:
                                FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                      ),
                    ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(8.0, 20.0, 8.0, 20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Anda tidak memiliki akun?',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF8F8F8F),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('RegisterPage');
                            },
                            child: Text(
                              'Daftar disini',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF1BB273),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
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
