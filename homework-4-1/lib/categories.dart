import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Категории',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                'Посмотреть все',
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 72, 11),
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                  decorationColor: const Color.fromARGB(255, 255, 72, 11),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _circleImage("images/P1.png", "Одежда"),
              _circleImage("images/P2.png", "Недвижимость"),
              _circleImage("images/P3.png", "Элеткроника"),
              _circleImage("images/P4.png", "Все для дома"),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _circleImage(String path, String title) {
  return Column(
    children: [
      Container(
        width: 70,
        height: 70,
        decoration: const BoxDecoration(shape: BoxShape.circle),
        child: ClipOval(child: Image.asset(path, fit: BoxFit.cover)),
      ),

      const SizedBox(height: 5),

      Text(title, style: const TextStyle(color: Colors.white, fontSize: 12)),
    ],
  );
}
