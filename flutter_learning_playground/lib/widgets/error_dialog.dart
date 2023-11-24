import 'package:flutter/material.dart';
import 'package:flutter_learning_playground/constants/errors_texts.dart';

enum ErrorType {
  warning,
  error,
}

class ErrorDialog {
  static void showErrorDialog(BuildContext context, String errorMessage) {
    _showDialog(context, errorMessage, ErrorType.error);
  }

  static void showWarningDialog(BuildContext context, String warningMessage) {
    _showDialog(context, warningMessage, ErrorType.warning);
  }

  static void _showDialog(
      BuildContext context, String message, ErrorType type) {
    IconData icon;
    Color color;
    String title;

    switch (type) {
      case ErrorType.warning:
        icon = Icons.warning;
        color = Colors.orange;
        title = ErrorsTexts.warningMessage;
        break;
      case ErrorType.error:
        icon = Icons.error;
        color = Colors.red;
        title = ErrorsTexts.errorMessage;
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
              child: const Text(ErrorsTexts.okMessage),
            ),
          ],
        );
      },
    );
  }
}

// Przykład użycia:
// ErrorDialog.showErrorDialog(context, 'To jest komunikat o błędzie.');
// lub
// ErrorDialog.showWarningDialog(context, 'To jest komunikat ostrzeżenia.');
