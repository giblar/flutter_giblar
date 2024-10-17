import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final String school;
  final String name;
  final String role;
  final String description;

  const Page2({
    Key? key,
    required this.school,
    required this.name,
    required this.role,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
        centerTitle: true,
        backgroundColor: const Color(0xFF1B1B1B),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('assets/images/ganteng.jpg'),
            ),
            const SizedBox(height: 30),

            // Container Nama
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.symmetric(vertical: 5.0),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    name, // Menampilkan deskripsi yang diisi di login page
                    style: const TextStyle(fontSize: 18, color: Colors.white70),
                  ),
                ],
              ),
            ),


            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.symmetric(vertical: 5.0),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'role',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    role, // Menampilkan deskripsi yang diisi di login page
                    style: const TextStyle(fontSize: 18, color: Colors.white70),
                  ),
                ],
              ),
            ),
            // Container Pekerjaan
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.symmetric(vertical: 5.0),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'school',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    ' $school', // Menampilkan nama sekolah yang diisi
                    style: const TextStyle(fontSize: 18, color: Colors.white70),
                  ),
                ],
              ),
            ),

            // Container Nama
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.symmetric(vertical: 5.0),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'About Me',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description, // Menampilkan nama yang diisi di login page
                    style: const TextStyle(fontSize: 18, color: Colors.white70),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFF121212),
    );
  }
}
