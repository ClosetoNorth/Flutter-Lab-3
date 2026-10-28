import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant Menu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        scaffoldBackgroundColor: const Color(0xFFFFF8FC),
        useMaterial3: true,
      ),
      home: const RestaurantMenuPage(),
    );
  }
}

class RestaurantMenuPage extends StatelessWidget {
  const RestaurantMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    const menuItems = ['Vegetable Pizza', 'Chicken Pizza', 'Cheese Pizza'];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 48,
        title: const Text(
          'Restaurant Menu',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'cursive',
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFFFF5722),
        elevation: 3,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(2, 2, 2, 16),
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 5),
            elevation: 3,
            shadowColor: Colors.black45,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11),
            ),
            color: const Color(0xFFFFA009),
            clipBehavior: Clip.antiAlias,
            child: SizedBox(
              height: 87,
              child: Row(
                children: [
                  Container(
                    width: 78,
                    height: double.infinity,
                    color: const Color(0xFFFFA91D),
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.local_pizza,
                      size: 49,
                      color: Color(0xFFE64A19),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Text(
                      menuItems[index],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
