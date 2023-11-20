import 'package:flutter/material.dart';

//====================================================
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
//====================================================

class _LoginScreenState extends State<LoginScreen> {
  String imageFile = 'images/insta.png';
  String imageFile2 = 'images/meta.png';
  bool isIconDisplayed = true;

  void changeIcon() {
    isIconDisplayed = !isIconDisplayed;

    if (imageFile == 'images/insta.png') {
      imageFile = 'images/facebook.png';
    } else {
      imageFile = 'images/insta.png';
    }

    if (imageFile2 == 'images/meta.png') {
      imageFile2 = 'images/telegram.png';
    } else {
      imageFile2 = 'images/meta.png';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  isIconDisplayed
                      ? Icon(Icons.lock_outline, size: 100) // Display Icon
                      : Image.asset('images/unlock.png',
                          height: 100, width: 100), // Display Image
                  SizedBox(height: 16),

                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                      ),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        changeIcon();
                      },
                      child: Text('Login'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          fixedSize: const Size(300, 50)),
                    ),
                    SizedBox(height: 50),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            '$imageFile',
                            height: 100,
                            width: 100,
                          ),
                          Image.asset(
                            '$imageFile2',
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
