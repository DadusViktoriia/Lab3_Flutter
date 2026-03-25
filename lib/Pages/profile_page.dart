import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildHeader(),
              const SizedBox(height: 15),
              _buildProfileStats(),
              const SizedBox(height: 20),
              _buildRecipeTab(),
              _buildManualGrid(),
              const SizedBox(height: 100), 
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
      extendBody: true,
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: const DecorationImage(
                image: AssetImage('assets/images/icon1.png'),
                fit: BoxFit.cover,
              ),
              border: Border.all(color: const Color(0xFFFD5D69), width: 2),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Dianne Russell',
                  style: TextStyle(
                    color: Color(0xFFFD5D69),
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  '@dianne_r',
                  style: TextStyle(
                    color: Color(0xFFEC888D),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'My passion is cooking and sharing new recipes with the world.',
                  style: TextStyle(
                    color: Color(0xFF32201C),
                    fontSize: 12,
                    fontFamily: 'League Spartan',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileStats() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 30,
            decoration: BoxDecoration(
              color: const Color(0xFFFFC6C9),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Text(
                'Edit Profile',
                style: TextStyle(color: Color(0xFFEC888D), fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: const Color(0xFFFFC6C9)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _statColumn("60", "recipes"),
                Container(width: 1, height: 30, color: const Color(0xFFFFC6C9)),
                _statColumn("120", "Following"),
                Container(width: 1, height: 30, color: const Color(0xFFFFC6C9)),
                _statColumn("250", "Followers"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _statColumn(String value, String label) {
    return Column(
      children: [
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }

  Widget _buildRecipeTab() {
    return Column(
      children: [
        const Text(
          "Recipe",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFF32201C)),
        ),
        const SizedBox(height: 4),
        Container(width: 350, height: 2, color: const Color(0xFFFD5D69)),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildManualGrid() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          _recipeRow("Pizza Salami", "Pizza Salami"),
          const SizedBox(height: 15),
          _recipeRow("Pizza Salami", "Pizza Salami"),
          const SizedBox(height: 15),
          _recipeRow("Pizza Salami", "Pizza Salami"),
        ],
      ),
    );
  }

  Widget _recipeRow(String t1, String t2) {
    return Row(
      children: [
        Expanded(child: _recipeCard(t1)),
        const SizedBox(width: 15),
        Expanded(child: _recipeCard(t2)),
      ],
    );
  }

  Widget _recipeCard(String title) {
    return Container(
      height: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xFFEC888D)),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(14)),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/Pizza.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 8, top: 8,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: const Color(0xFFFD5D69),
                    child: const Icon(Icons.favorite, color: Colors.white, size: 14),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  const Text('A feast for the senses', style: TextStyle(fontSize: 10, color: Colors.grey)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('⭐ 4', style: TextStyle(color: Color(0xFFEC888D), fontSize: 10)),
                      Text('20 min', style: TextStyle(color: Color(0xFFEC888D), fontSize: 10)),
                    ],
                  ),
                ],
              ),
            ),
          ),
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
          Icon(Icons.home_outlined, color: Colors.white, size: 28),
          Icon(Icons.search, color: Colors.white, size: 28),
          Icon(Icons.person, color: Colors.white, size: 28),
        ],
      ),
    );
  }
}