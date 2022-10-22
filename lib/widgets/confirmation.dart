import 'package:flutter/material.dart';
import '../colors.dart';
import '../utils/style_constant.dart';

class Confirmation extends StatelessWidget {
  final title;
  final icon;
  final positiveOption;
  final negativeOption;
  const Confirmation({
    super.key,
    required this.title,
    required this.icon,
    required this.positiveOption,
    required this.negativeOption,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: Icon(
        icon,
        size: 40,
      ),
      iconColor: Colors.blue,
      iconPadding: EdgeInsets.only(top: 24),
      title: Text(
        title,
        style: KtextStyle.noColor16400,
      ),
      titlePadding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actionsPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Text(
              positiveOption,
              style: KtextStyle.noColor16700,
            ),
          ),
          onPressed: () {},
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 239, 242, 255),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Text(
              negativeOption,
              style: TextStyle(
                color: buttonColor,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
