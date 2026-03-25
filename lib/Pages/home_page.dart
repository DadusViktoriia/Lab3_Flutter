import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              _head(),
              const SizedBox(height: 30),
              _title('Trending Recipe'),
              const SizedBox(height: 10),
              _trendCard(),
              const SizedBox(height: 30),
              _title('Recently Added'),
              const SizedBox(height: 10),
              SizedBox(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 25),
                  itemCount: 3,
                  itemBuilder: (context, index) => _recentItem(),
                ),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
      extendBody: true,
    );
  }

  Widget _head() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Hi! Dianne',
            style: TextStyle(
              color: Color(0xFFFD5D69), 
              fontSize: 25, 
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins'
            ),
          ),
          Text(
            'What are you cooking today?', 
            style: TextStyle(
              fontSize: 14, 
              fontFamily: 'Poppins',
              color: Color(0xFF32201C),
            )
          ),
        ],
      ),
    );
  }

  Widget _title(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFFFD5D69), 
          fontSize: 16, 
          fontWeight: FontWeight.w500,
          fontFamily: 'Poppins'
        ),
      ),
    );
  }

  Widget _trendCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFEB878D)),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(13)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/Pizza.png'), 
                    fit: BoxFit.cover
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Pizza Salami', 
                      style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Poppins')
                    ),
                    Text(
                      'Quick overview...', 
                      style: TextStyle(color: Colors.grey, fontSize: 12, fontFamily: 'Poppins')
                    ),
                  ],
                ),
                const Text(
                  '⭐ 5\n30min', 
                  style: TextStyle(color: Color(0xFFEB878D), fontSize: 12), 
                  textAlign: TextAlign.right
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _recentItem() {
    return Container(
      width: 170,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFEB878D)),
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(13)),
                    image: DecorationImage(
                      image: AssetImage('assets/images/Pizza.png'), 
                      fit: BoxFit.cover
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pizza Salami', 
                  style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Poppins')
                ),
                Text(
                  'Italian Classic', 
                  style: TextStyle(fontSize: 11, color: Colors.grey, fontFamily: 'Poppins')
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('⭐ 4', style: TextStyle(color: Color(0xFFEB878D), fontSize: 11)),
                    Text('30 min', style: TextStyle(color: Color(0xFFEB878D), fontSize: 11)),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBottomNavBar() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, left: 60, right: 60),
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xFFFD5D69),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(Icons.home, color: Colors.white, size: 28),
          Icon(Icons.search, color: Colors.white, size: 28),
          Icon(Icons.person_outline, color: Colors.white, size: 28),
        ],
      ),
    );
  }
}