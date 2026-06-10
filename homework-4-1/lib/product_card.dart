import 'package:flutter/material.dart';
import 'package:lesson_01/favorite_button.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final String city;
  final String time;

  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.city,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFF27262A),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  image,
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: const FavoriteButton(),
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),

          const SizedBox(height: 10),

          Row(
            children: [
              Text(
                price,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(width: 8),

              const Text(
                'Договорная',
                style: TextStyle(color: Colors.deepOrange, fontSize: 14),
              ),
            ],
          ),

          const SizedBox(height: 14),

          Text(
            city,
            style: const TextStyle(
              color: Colors.deepOrange,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            time,
            style: const TextStyle(color: Colors.white70, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
