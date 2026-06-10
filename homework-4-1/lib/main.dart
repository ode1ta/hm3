import 'package:flutter/material.dart';
import 'package:lesson_01/categories.dart';
import 'package:lesson_01/recomm.dart';
import 'banners.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
  backgroundColor: Colors.black,
  body: SingleChildScrollView(
    child: Column(
      children:  [
            SizedBox(
              height: 120,
              child: Stack(
                children: [
                  Positioned(
                    top: 59,
                    left: 24,
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text.rich(
                          TextSpan(
                            text: 'Ваш город: ',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                            children: [
                              TextSpan(
                                text: 'Бишкек',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    top: 67,
                    right: 24,
                    child: const Icon(
                      Icons.notifications_outlined,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 12),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 45,
              decoration: BoxDecoration(
                color: const Color(0xFF27262A),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Введите название товара",
                  hintStyle: TextStyle(color: Color(0xFF9F9F9F)),
                  border: InputBorder.none,
                  icon: Icon(Icons.search, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 12),
            Banners(),
            SizedBox(height: 12),
            Categories(),
            SizedBox(height: 16),
            Recomm(),
          ],
        ),
      ),
      )
    );
  }
}
