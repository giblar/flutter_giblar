import 'package:flutter/material.dart';
import 'page2.dart'; // Import Page2

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _schoolController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/wikrama-logo.png'),
              ),
              const SizedBox(height: 50),
              const Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Please login to your account',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 40),

              // Form for school
              TextField(
                controller: _schoolController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'School',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  prefixIcon: const Icon(Icons.school),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              const SizedBox(height: 20),

              // Form for name
              TextField(
                controller: _nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  prefixIcon: const Icon(Icons.person_2_rounded),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              const SizedBox(height: 20),

              // Form for email
              TextField(
                controller: _roleController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'role',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  prefixIcon: const Icon(Icons.email_outlined),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              const SizedBox(height: 20),

              // Form for description
             TextField(
  controller: _descriptionController,
  maxLines: 5, // Menentukan jumlah baris maksimum
  minLines: 3, // Menentukan jumlah baris minimum untuk tampilan lebih besar
  decoration: InputDecoration(
    labelText: 'Description',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    prefixIcon: const Icon(Icons.description),
    filled: true,
    fillColor: Colors.grey[200],
  ),
),

          SizedBox(height: 10,),
              // Login button
              SizedBox(
                
                width: double.infinity,
                height: 50,
                
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to Page2 and send data
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Page2(
                          school: _schoolController.text,
                          name: _nameController.text,
                          role: _roleController.text,
                          description: _descriptionController.text,
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 25, 31, 28),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
