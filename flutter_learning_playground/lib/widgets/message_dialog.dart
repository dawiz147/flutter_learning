import 'package:flutter/material.dart';
import 'package:flutter_learning_playground/constants/message_texts.dart';

enum MessageType { warning, error, info }

class MessageDialog {
  static void showErrorDialog(BuildContext context, String errorMessage) {
    _showDialog(context, errorMessage, MessageType.error);
  }

  static void showWarningDialog(BuildContext context, String warningMessage) {
    _showDialog(context, warningMessage, MessageType.warning);
  }

  static void showInfoDialog(BuildContext context, String infoMessage) {
    _showDialog(context, infoMessage, MessageType.info);
  }

  static void _showDialog(
      BuildContext context, String message, MessageType type) {
    IconData icon;
    Color color;
    String title;

    switch (type) {
      case MessageType.warning:
        icon = Icons.warning;
        color = Colors.orange;
        title = MessageTexts.warningMessage;
        break;
      case MessageType.error:
        icon = Icons.error;
        color = Colors.red;
        title = MessageTexts.errorMessage;
        break;
      case MessageType.info:
        icon = Icons.info;
        color = Colors.blue;
        title = MessageTexts.infoMessage;
        break;
      default:
        icon = Icons.help;
        color = Colors.red;
        title = MessageTexts.notImplementedTypeMessage;
        break;
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: [
              Icon(icon, color: color),
              const SizedBox(width: 8),
              Text(title),
            ],
          ),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(MessageTexts.okMessage),
            ),
          ],
        );
      },
    );
  }
}
