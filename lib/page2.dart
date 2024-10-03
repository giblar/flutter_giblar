import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
        centerTitle: true,
        backgroundColor: const Color(0xFF1B1B1B), // Dark theme app bar color
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
                color: Colors.grey[800], // Dark card color
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Nama:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white), // Text color white
                  ),
                  SizedBox(height: 5),
                  Text(
                    'seorang pelajar yang hidup bersama ibu dan kakak nya, ayah nya meninggal pada saat dia duduk di bangku sd, kehidupan yang begitu keras menempa diirinya menjadi pribadi yang lebih baik',
                    style: TextStyle(fontSize: 18, color: Colors.white70), // Lighter text color
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
                color: Colors.grey[800], // Dark card color
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Pekerjaan:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Siswa SMK Wikrama Bogor',
                    style: TextStyle(fontSize: 18, color: Colors.white70),
                  ),
                ],
              ),
            ),

            // Container Hobi
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.symmetric(vertical: 5.0),
              decoration: BoxDecoration(
                color: Colors.grey[800], // Dark card color
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Hobi:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Membuat Aplikasi Mobile',
                    style: TextStyle(fontSize: 18, color: Colors.white70),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFF121212), // Dark theme background color
    );
  }
}
