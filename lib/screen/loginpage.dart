import 'package:flutter/material.dart';
import 'package:testapp/common_widgets/textformfield.dart';
import 'package:testapp/screen/homepage.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            const SizedBox(height: 100),
            const Row(
              children: [
                Text(
                  'Login',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            CustomTextFormField(
              hint: 'Username',
              prefixIcon: Icon(Icons.person_2_rounded),
              controller: _nameController,
              validator: (p0) {},
            ),
            const SizedBox(height: 15),
            CustomTextFormField(
              hint: 'Password',
              prefixIcon: Icon(Icons.lock_open_rounded),
              controller: _passController,
              validator: (p0) {},
            ),
            const SizedBox(height: 40),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.transparent,
                  elevation: 0,
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                },
                child: const Text('LOGIN'))
          ],
        ),
      ),
    );
  }
}
