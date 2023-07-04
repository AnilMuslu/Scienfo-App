import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scienfo/main.dart';
import 'package:scienfo/scienfo_register_page.dart'; // Import the file where AuthenticationService

class ExitIcon extends StatelessWidget {
  ExitIcon({
    Key? key,
  }) : super(key: key);

  Future<void> _showLogoutDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap a button to close dialog
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout Confirmation'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Are you sure you want to log out?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Yes, log out'),
              onPressed: () async {
                await context.read<AuthenticationService>().signOut();
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => ScienfoRegisterPage()), 
                  (Route<dynamic> route) => false,
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showLogoutDialog(context);
      },
      child: Icon(
        Icons.exit_to_app,
        color: Colors.black,
        size: 30.0,
      ),
    );
  }
}


