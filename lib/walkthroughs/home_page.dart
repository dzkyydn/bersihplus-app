import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/notification_walkthrough_widget.dart';
import '/components/flip_card_walkthrough_widget.dart';
import '/components/u_i_d_walkthrough_widget.dart';
import '/components/transfer_walkthrough_widget.dart';
import '/components/transfer_list_walkthrough_widget.dart';
import '/components/transaction_walkthrough_widget.dart';
import '/components/item_walkthrough_widget.dart';
import '/components/donation_walkthrough_widget.dart';
import '/components/setting_walkthrough_widget.dart';
import '/components/new_transaction_walkthrough_widget.dart';

// Focus widget keys for this walkthrough
final iconButtonIs64bfaa = GlobalKey();
final containerO932qjuv = GlobalKey();
final textV4wo8faq = GlobalKey();
final containerA0cl3v4j = GlobalKey();
final containerV9qhhg8f = GlobalKey();
final containerPdjdvtf2 = GlobalKey();
final container3ig4h5gr = GlobalKey();
final container5jrlp6vd = GlobalKey();
final containerDprenruu = GlobalKey();
final columnPbeqe1ad = GlobalKey();

/// HomePage
///
/// HomePage walkthroughs
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: iconButtonIs64bfaa,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const NotificationWalkthroughWidget(),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: containerO932qjuv,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const FlipCardWalkthroughWidget(),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: textV4wo8faq,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const UIDWalkthroughWidget(),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: containerA0cl3v4j,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const TransferWalkthroughWidget(),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: containerV9qhhg8f,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const TransferListWalkthroughWidget(),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: containerPdjdvtf2,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const TransactionWalkthroughWidget(),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: container3ig4h5gr,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const ItemWalkthroughWidget(),
          ),
        ],
      ),

      /// Step 8
      TargetFocus(
        keyTarget: container5jrlp6vd,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const DonationWalkthroughWidget(),
          ),
        ],
      ),

      /// Step 9
      TargetFocus(
        keyTarget: containerDprenruu,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const SettingWalkthroughWidget(),
          ),
        ],
      ),

      /// Step 10
      TargetFocus(
        keyTarget: columnPbeqe1ad,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const NewTransactionWalkthroughWidget(),
          ),
        ],
      ),
    ];
