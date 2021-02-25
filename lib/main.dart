import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main() => runApp(Intro());

_launchURL() async {
  const url = 'https://github.com/Karunyadav-07';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_lunchURL() async {
  const url = 'https://www.linkedin.com/in/karun-yadav-87574b6a/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Center(
                    child: CircleAvatar(
                    child: Text(
                    'KY',
                    style: TextStyle(
                      fontSize: 75,
                      fontFamily: 'Greatvibes',
                    ),
                  ),
                  radius: 100,
                )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Karun yadav',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.greenAccent,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Text(
                    'Welcome, I am Karun Yadav student of NSIT. Currently pursuing B.E in Instrumentation and control .I am a Flutter enthusiast and also i am on way to be a Flutter developer.',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.indigo,
                        fontFamily: 'IndieFlower'),
                  ),
                  color: Colors.transparent,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+91 8076150580',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'karunyadav02@gmail.com',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal.shade900,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    RaisedButton(
                      onPressed: _launchURL,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage('https://image.flaticon.com/icons/png/512/25/25231.png'),
                        radius: 30,
                      ),
                    ),


                 SizedBox(
                      width: 15,
                    ),
                    RaisedButton(
                      onPressed: _lunchURL,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://cdn4.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-linkedin-circle-512.png'),
                        radius: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
