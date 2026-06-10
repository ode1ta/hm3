
import 'package:flutter/material.dart';
import 'product_card.dart';

class Recomm extends StatefulWidget {
  const Recomm({super.key});

  @override
  State<Recomm> createState() => _RecommState();
}

class _RecommState extends State<Recomm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // 🔹 Заголовок
          const Text(
            'Рекомендации',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          // 🔹 Сетка
          GridView(
            shrinkWrap: true, // 👈 важно
            physics: const NeverScrollableScrollPhysics(), // 👈 важно

            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.65,
            ),

            children: const [
              ProductCard(
                image: "images/Card1.png",
                title: "Наушнки Beats by Dre",
                price: "22 000 С",
                city: "Бишкек",
                time: "Сегодня 15:30",
              ),

              ProductCard(
                image: "images/Card2.png",
                title: "Очки Prada",
                price: "18 000 С",
                city: "Бишкек",
                time: "Вчера 12:10",
              ),

              ProductCard(
                image: "images/Card1.png",
                title: "Наушнки Beats by Dre",
                price: "22 000 С",
                city: "Бишкек",
                time: "Сегодня 15:30",
              ),

              ProductCard(
                image: "images/Card2.png",
                title: "Очки Prada",
                price: "18 000 С",
                city: "Бишкек",
                time: "Вчера 12:10",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class Recomm extends StatefulWidget {
//   const Recomm({super.key});

//   @override
//   State<Recomm> createState() => _RecommState();
// }
// class _RecommState extends State<Recomm> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: SizedBox(
//         width: double.infinity,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: const [
//             Text(
//               'Рекомендации',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
      
//     );
//   }
// }
