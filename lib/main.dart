import 'package:flutter/material.dart';
import 'page2.dart'; // Pastikan file page2.dart ada di direktori yang benar
import 'Login.dart'; // Pastikan file Login.dart ada di direktori yang benar


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: LoginPage(),
)); 

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B1B1B), // Dark background color
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          color: Color(0xFF2E2E2E), // Dark card color
          elevation: 10, // Added elevation for depth
          margin: EdgeInsets.all(20.0),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('assets/images/ganteng.jpg'),
                ),
                SizedBox(height: 15.0),
                Text(
                  "Giblar Tampan",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8.0),
                Text(
                  "Vocational High School Student at SMK Wikrama Bogor",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[400],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent, // Button background color (gunakan backgroundColor)
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 12.0),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Page2()),
                    // );
                  },
                  child: Text(
                    'See More',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
