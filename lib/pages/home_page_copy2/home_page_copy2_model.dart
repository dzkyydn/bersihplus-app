import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_copy2_widget.dart' show HomePageCopy2Widget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePageCopy2Model extends FlutterFlowModel<HomePageCopy2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getAnnouncementAPI)] action in HomePageCopy2 widget.
  ApiCallResponse? apiResultAnnouncement;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

  // Stores action output result for [Backend Call - API (getItemsAPI)] action in Container widget.
  ApiCallResponse? apiResulte2j;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
