import 'package:flutter/material.dart';
import 'dart:ffi';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/material.dart';
import 'package:fresco/main.dart';
import 'package:fresco/secondary_home_page.dart';
import 'package:fresco/result_page.dart';

class about extends StatefulWidget {
  const about({super.key});
  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('About Us'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(7),
            child: Column(
              children: [
                Image.asset('assets/images/logo.png'),
                Text(
                  "Fresco is an AI-based art and image generator application designed to provide users with a unique and creative experience. Our mission is to democratize art and make it accessible to everyone. We aim to bring the power of AI to the hands of users and allow them to create beautiful, one-of-a-kind images with just a few taps.",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
                Text(
                  "Our team of experienced developers and designers is dedicated to creating an innovative and user-friendly application that provides a seamless and enjoyable experience. Our passion for art and technology drives us to push the boundaries of what is possible and to continuously improve the features and capabilities of our application.",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
                Text(
                  "At Fresco, we believe that art is an essential part of human expression and creativity. Our goal is to inspire users to unleash their creativity and imagination by providing them with the tools they need to create stunning art and images. We are committed to making art accessible to everyone, regardless of their background or experience.",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
                Text(
                  "We welcome your feedback and suggestions as we continue to develop and improve Fresco. Thank you for choosing Fresco, and we hope you enjoy creating beautiful art with our application.",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ));
  }
}
