import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:minaret/logic/common.dart';

Widget iconUpdate(BuildContext context) {
  return IconButton(
    icon: Icon(
      FontAwesomeIcons.syncAlt,
      color: appThemeColor,
    ),
    onPressed: () async {
      // BlocProvider.of<PrayerTimeBloc>(context).add(PrayerTimeRetrieveData());
    },
  );
}
