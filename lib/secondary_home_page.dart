import 'package:flutter/material.dart';
import 'package:fresco/main.dart';
import 'package:fresco/newfaqs.dart';
import 'package:fresco/about.dart';
import 'package:fresco/secondary_home_page.dart';

class secondaryhomepage extends StatefulWidget {
  @override
  State<secondaryhomepage> createState() => _secondaryhomepageState();
}

class _secondaryhomepageState extends State<secondaryhomepage> {
  final _textprompt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image.asset(
              'assets/images/homepage_image.png',
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Let's make you see your imaginations!",
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 24,
              ),
              child: Column(
                children: [
                  TextFormField(
                    controller: _textprompt,
                    decoration: InputDecoration(
                      iconColor: Colors.black,
                      hintText: 'Enter text prompt to generate image',
                      labelText: 'Type text here',
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    child: Text('Generate'),
                    onPressed: () {
                      //Text(_textprompt.text);
                      Navigator.pushNamed(context, "/result_page");
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Fresco",
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Text(
                'Dashboard',
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'FAQs',
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/newfaqs',
                );
              },
            ),
            ListTile(
              title: Text(
                'About',
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/about',
                );
              },
            ),
            ListTile(
              title: const Text(
                'LogOut',
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/login_register_page',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
