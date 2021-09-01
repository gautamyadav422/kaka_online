import 'package:flutter/material.dart';
import 'package:kaka_online/LoginPage/Login.dart';

import 'introPage.dart';

enum DialogsAction { yes, cencel }

class AlertDialogs {
  static Future<DialogsAction> yesCancelDialog(
    BuildContext context,
    String title,
    String body,
  ) async {
    final action = await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            title: Text(title),
            content: Text(body),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(DialogsAction.cencel);
                },
                child: Text(
                  "Cancel",
                  style: TextStyle(
                      color: Color(0xFFC41A3B), fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => LoginPage()
                    ),
                        (_) => false,
                  );
                },
                child: Text(
                  "Confirm",
                  style: TextStyle(
                      color: Color(0xFFC41A3B), fontWeight: FontWeight.w700),
                ),
              ),
            ],
          );
        });
    return (action != null) ? action : DialogsAction.cencel;
  }
}
