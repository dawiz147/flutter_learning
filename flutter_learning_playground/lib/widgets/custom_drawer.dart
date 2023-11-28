import 'package:flutter/material.dart';
import 'package:flutter_learning_playground/constants/message_texts.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const Center(
            child: DrawerHeader(
          child: Text('Drawer Header'),
        )),
        ListTile(
          leading: const Icon(
            Icons.warning,
          ),
          title: const Text(MessageTexts.notImplementedYetMessage),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.warning,
          ),
          title: const Text(MessageTexts.notImplementedYetMessage),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
