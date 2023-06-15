import 'package:flutter/material.dart';

class SettingsButton extends StatelessWidget {
  SettingsButton({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: 'settings' (shape)
        Container(
          width: 28.0,
          height: 28.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/settings_button.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
