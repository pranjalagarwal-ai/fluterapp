import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fresco/main.dart';
import 'package:fresco/newfaqs.dart';
import 'package:fresco/secondary_home_page.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:http/http.dart' as http;

class result_page extends StatefulWidget {
  const result_page({super.key});

  @override
  State<result_page> createState() => result_pageState();
}

class result_pageState extends State<result_page> {
  @override
  final imageurl =
      'https://mpost.io/wp-content/uploads/image-74-7-1024x1024.jpg';
  Widget build(BuildContext context) {
    bool generated = false;
    return Scaffold(
      appBar: AppBar(title: Text('Result')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            SizedBox(
              height: 150,
            ),
            Image.network(imageurl),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(52)),
              child: Text(
                'Share',
                style: TextStyle(fontSize: 28),
              ),
              onPressed: () async {
                final uri = Uri.parse(imageurl);
                final res = await http.get(uri);
                final bytes = res.bodyBytes;

                final temp = await getTemporaryDirectory();
                final path = '${temp.path}/image.jpg'; //THIS IS A COMMENT
                //THE COMPILER WILL IGNORE THIS
                //THIS PIECE OF LINE WILL NOT BE COMPILED
                //SINCE THIS IS NOT REQUIRED IT WILL BE
                File(path).writeAsBytesSync(bytes);

                await Share.shareFiles([path]);
              },
            )
          ]),
        ),
      ),
    );
  }
}
