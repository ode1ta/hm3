import 'package:flutter/material.dart';

class Banners extends StatefulWidget {
  const Banners({super.key});

  @override
  State<Banners> createState() => _BannersState();
}

class _BannersState extends State<Banners> {
  final PageController _controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
       Container(
  margin: const EdgeInsets.symmetric(horizontal: 20),
  height: 155,
  child: ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: PageView(
      controller: _controller,
  onPageChanged: (index) {
    setState(() {
      currentPage = index;
    });
  },
      children: [
        Image.asset(
          "images/Frame.png",
          width: double.infinity,
          fit: BoxFit.contain,
        ),
         Image.asset(
          "images/Frame.png",
          width: double.infinity,
          fit: BoxFit.contain,
        ),
         Image.asset(
          "images/Frame.png",
          width: double.infinity,
          fit: BoxFit.contain,
        ),
      ],
    ),
  ),
),

        const SizedBox(height: 8),

        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: List.generate(3, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 3),
                width: currentPage == index ? 10 : 6,
                height: 6,
                decoration: BoxDecoration(
                  color: currentPage == index ? const Color.fromARGB(255, 255, 85, 13) : Colors.white54,
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
