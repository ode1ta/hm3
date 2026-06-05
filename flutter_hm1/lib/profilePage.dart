import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  String name = 'Gojo Satoru';
  String bio = 'Strongest Jujutsu Sorcerer';
  String age = '28 years old';
  String city = 'Tokyo, Japan';
  String interests =
      'Fighting curses\nTeaching students\nInfinity technique\nChilling and joking';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/image.png'),
            ),
            SizedBox(height: 16),

            // Имя (выразительный стиль)
            Text(
              name,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 6),

            // Возраст (легкий, тонкий)
            Text(
              age,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.grey[400],
              ),
            ),

            SizedBox(height: 6),

            // Город (акцент)
            Text(
              city,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.blueAccent,
              ),
            ),

            SizedBox(height: 10),

            // Био (курсив + мягкий цвет)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                bio,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  height: 1.4,
                  color: Colors.white70,
                ),
              ),
            ),

            SizedBox(height: 12),

            // Интересы (как список)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                interests,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  letterSpacing: 1,
                  height: 1.6,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),

            SizedBox(height: 20),

            // Кнопка (контрастный текст)
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: EdgeInsets.symmetric(horizontal: 28, vertical: 14),
              ),
              child: Text(
                'Follow',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}