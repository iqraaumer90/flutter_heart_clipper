import 'package:flutter/material.dart';

import 'package:flutter_heart_clipping/heart_painter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.88,
            height: 490,
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.60),
              borderRadius: BorderRadius.circular(22),
              boxShadow: [
                BoxShadow(
                  color: Colors.pink.withOpacity(0.12),
                  blurRadius: 25,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // HEADER
                SizedBox(
                  height: 48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFE5ED),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          Icons.favorite,
                          color: Color(0xFFE91E63),
                          size: 27,
                        ),
                      ),
                      const Text(
                        'Pulsey',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF25212A),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 17,
                          vertical: 9,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFE91E63),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Text(
                          'PRO',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 22),

                // GREETING
                const Text(
                  'Hello, Andrew!',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF25212A),
                  ),
                ),

                const SizedBox(height: 5),

                const Text(
                  'Your heart journey starts here',
                  style: TextStyle(fontSize: 14, color: Color(0xFF88838F)),
                ),

                const SizedBox(height: 22),

                // HEART RATE CARD
                Container(
                  width: double.infinity,
                  height: 175,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF0F4),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Row(
                    children: [
                      // LEFT SIDE
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Heart Rate',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF25212A),
                              ),
                            ),

                            const SizedBox(height: 8),

                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '295',
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF25212A),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 6),
                                  child: Text(
                                    'records',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 12),

                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFFF72568),
                                    Color(0xFFD81B60),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.monitor_heart_outlined,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    'Measure',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // RIGHT SIDE HEART
                      Expanded(
                        flex: 5,
                        child: Center(
                          child: SizedBox(
                            width: 120,
                            height: 135,
                            child: CustomPaint(painter: HeartPainter()),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // DIVIDER
                Divider(color: Colors.grey.shade200, thickness: 1),

                const SizedBox(height: 15),

                // BOTTOM NAVIGATION
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // HOME
                    Column(
                      children: [
                        const Icon(
                          Icons.home_rounded,
                          color: Color(0xFFE91E63),
                          size: 27,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Home',
                          style: TextStyle(
                            color: Color(0xFFE91E63),
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          height: 3,
                          width: 20,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE91E63),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ],
                    ),

                    // HISTORY
                    Column(
                      children: [
                        Icon(
                          Icons.bar_chart_rounded,
                          color: Colors.grey.shade500,
                          size: 27,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'History',
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),

                    // STATUS
                    Column(
                      children: [
                        Icon(
                          Icons.favorite_border_rounded,
                          color: Colors.grey.shade500,
                          size: 27,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Status',
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),

                    // PROFILE
                    Column(
                      children: [
                        Icon(
                          Icons.person_outline_rounded,
                          color: Colors.grey.shade500,
                          size: 27,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
