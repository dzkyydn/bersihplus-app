import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_walkthrough_widget.dart' show HomePageWalkthroughWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePageWalkthroughModel
    extends FlutterFlowModel<HomePageWalkthroughWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? homePageController;
  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getAnnouncementAPI)] action in HomePageWalkthrough widget.
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
    homePageController?.finish();
    unfocusNode.dispose();
  }
}
