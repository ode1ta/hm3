import 'main.dart';
import 'package:flutter/material.dart';

class CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();

  double result = 0;

  double get firstValue => double.tryParse(firstController.text) ?? 0;
  double get secondValue => double.tryParse(secondController.text) ?? 0;

  void resetCalculator() {
    setState(() {
      firstController.clear();
      secondController.clear();
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 142, 176, 192),
      appBar: AppBar(title: Text('Mini-Calculator'), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: firstController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Первое число:',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: secondController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Второе число:',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = firstValue + secondValue;
                    });
                  },
                  child: Text('+', style: TextStyle(fontSize: 24)),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = firstValue - secondValue;
                    });
                  },
                  child: Text('-', style: TextStyle(fontSize: 24)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = firstValue * secondValue;
                    });
                  },
                  child: Text('x', style: TextStyle(fontSize: 24)),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (secondValue != 0) {
                        result = firstValue / secondValue;
                      } else {
                        result = 0;
                      }
                    });
                  },
                  child: Text('/', style: TextStyle(fontSize: 24)),
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 84, 84),
              ),
              onPressed: () => resetCalculator(),
              child: Text(
                'Сброс',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Результат:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
            SizedBox(height: 6),
            Container(
              width: 100,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 154, 154, 154),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                '$result',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}