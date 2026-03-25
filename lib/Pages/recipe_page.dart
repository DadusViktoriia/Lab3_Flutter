import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const coral = Color(0xFFFD5D69);
    const brown = Color(0xFF32201C);

    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: coral),
          onPressed: null,
          disabledColor: coral,
        ),
        title: const Text(
          'Trending Recipes',
          style: TextStyle(color: coral, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border, color: coral), 
            onPressed: () {}
          ),
        ],
      ),
      body: PopScope(
        canPop: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _header(),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Details', style: TextStyle(color: coral, fontSize: 20, fontWeight: FontWeight.w600)),
                        Text('Time: 30 min', style: TextStyle(color: brown, fontSize: 14)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Quick overview of the ingredients for this Salami Pizza recipe. Specific measurements are below.',
                      style: TextStyle(color: brown, fontSize: 13),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              _section('Ingredients'),
              _ingredients(),
              const SizedBox(height: 30),
              _section('6 Easy Steps'),
              _steps(),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      height: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
          image: AssetImage('assets/images/Pizza.png'), 
          fit: BoxFit.cover
        ),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 10, offset: const Offset(0, 5))
        ],
      ),
    );
  }

  Widget _section(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Text(
        title,
        style: const TextStyle(
          color: coral, 
          fontSize: 20, 
          fontWeight: FontWeight.w600
        ),
      ),
    );
  }

  static const coral = Color(0xFFFD5D69);

  Widget _ingredients() {
    final items = [
      "1 pre-made pizza dough",
      "1/2 cup pizza sauce",
      "1 1/2 cups shredded mozzarella",
      "1/2 cup sliced salami",
      "1/4 cup sliced black olives",
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: items.map((text) => Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            children: [
              const Text('• ', style: TextStyle(color: coral, fontSize: 18, fontWeight: FontWeight.bold)),
              Expanded(child: Text(text, style: const TextStyle(color: Color(0xFF32201C), fontSize: 14))),
            ],
          ),
        )).toList(),
      ),
    );
  }

  Widget _steps() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (ctx, i) {
        final isRed = i % 2 == 0;
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: isRed ? const Color(0xFFEB878D) : const Color(0xFFFFC5C8),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Text(
            'Step ${i + 1}: Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            style: const TextStyle(color: Color(0xFF1C0F0D), fontSize: 13),
          ),
        );
      },
    );
  }
}