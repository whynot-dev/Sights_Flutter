import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/core/enums/message_type.dart';
import 'package:sights/localization/app_localizations.dart';

class Dialogs {
  static Future<void> showMessageDialog({
    required BuildContext context,
    String? title,
    required String message,
    required String buttonText,
    bool dismissible = true,
    VoidCallback? onPressed,
  }) async {
    return showDialog(
      barrierDismissible: dismissible,
      context: context,
      builder: (BuildContext context) {
        if (Platform.isIOS) {
          return CupertinoAlertDialog(
            title: title != null ? Text(title) : null,
            content: Text(message),
            actions: <Widget>[
              TextButton(
                child: Text(
                  buttonText,
                  style: TextStyle(color: AppColors.accent),
                ),
                onPressed: () {
                  if (onPressed != null) {
                    onPressed.call();
                  } else {
                    Navigator.of(context).pop();
                  }
                },
              ),
            ],
          );
        } else {
          return AlertDialog(
            title: title != null ? Text(title) : null,
            content: Text(message),
            actions: <Widget>[
              TextButton(
                child: Text(
                  buttonText,
                  style: TextStyle(color: AppColors.onPrimary),
                ),
                onPressed: () {
                  if (onPressed != null) {
                    onPressed.call();
                  } else {
                    Navigator.of(context).pop();
                  }
                },
              ),
            ],
          );
        }
      },
    );
  }
}

void showMessage(
  BuildContext context, {
  required ShowMessage action,
  VoidCallback? onPressed,
}) {
  switch (action.messageType) {
    case MessageType.customMessage:
      Dialogs.showMessageDialog(
        context: context,
        title: action.title,
        message: action.message!,
        buttonText: AppLocalizations.of(context).ok,
        dismissible: action.dismissible,
        onPressed: onPressed,
      );
      break;
    case MessageType.noConnection:
      Dialogs.showMessageDialog(
        context: context,
        title: AppLocalizations.of(context).cantGetData,
        message: AppLocalizations.of(context).checkYourInternetConnection,
        buttonText: AppLocalizations.of(context).ok,
        dismissible: action.dismissible,
        onPressed: onPressed,
      );
      break;
    case MessageType.noGeoPermission:
      Dialogs.showMessageDialog(
        context: context,
        title: AppLocalizations.of(context).cantGetGeoPermission,
        message: AppLocalizations.of(context).checkYourGeoSettings,
        buttonText: AppLocalizations.of(context).ok,
        dismissible: action.dismissible,
        onPressed: onPressed,
      );
      break;
    case MessageType.undefinedError:
      Dialogs.showMessageDialog(
        context: context,
        title: AppLocalizations.of(context).error,
        message: AppLocalizations.of(context).somethingWentWrong,
        buttonText: AppLocalizations.of(context).ok,
        dismissible: action.dismissible,
        onPressed: onPressed,
      );
      break;
  }
}
