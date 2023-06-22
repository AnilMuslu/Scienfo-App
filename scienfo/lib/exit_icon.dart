import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scienfo/main.dart';
import 'package:scienfo/scienfo_register_page.dart'; // Import the file where AuthenticationService is defined.

class ExitIcon extends StatelessWidget {
  ExitIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await context.read<AuthenticationService>().signOut();
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => ScienfoRegisterPage()), 
          (Route<dynamic> route) => false,
        );
      },
      child: Stack(
        children: <Widget>[
          Container(
            width: 7.0,
            height: 9.0,
            decoration: BoxDecoration(
              color: const Color(0xff262626),
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 12.0),
            child: Container(
              width: 7.0,
              height: 9.0,
              decoration: BoxDecoration(
                color: const Color(0xff262626),
                borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 25.0),
            child: Container(
              width: 7.0,
              height: 9.0,
              decoration: BoxDecoration(
                color: const Color(0xff262626),
                borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
