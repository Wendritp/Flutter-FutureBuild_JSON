import 'package:flutter/material.dart';
import 'HomePage.dart';

class DetailPage extends StatelessWidget {
  final User user;
  DetailPage(this.user);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(user.name),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(user.image),
              ),
            ),
            Text(
              user.email,
              style: TextStyle(color: Colors.blue),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
                padding: EdgeInsets.only(
                  top: 15,
                  left: 15,
                  right: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "About",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      user.about,
                      textAlign: TextAlign.left,
                    ),
                  ],
                )),
          ],
        ));
  }
}
