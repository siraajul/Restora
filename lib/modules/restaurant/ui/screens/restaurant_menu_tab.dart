import 'package:flutter/material.dart';
import '../../../../shared/widgets/counter_widget.dart';

class RestaurantMenuTab extends StatefulWidget {
  const RestaurantMenuTab({super.key});

  @override
  _RestaurantMenuTabState createState() => _RestaurantMenuTabState();
}

class _RestaurantMenuTabState extends State<RestaurantMenuTab>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ScrollController _scrollController = ScrollController();

  // Example list of food categories
  final List<String> foodCategories = [
    'Appetizers',
    'Main Course',
    'Desserts',
    'Drinks',
    'Indian',
    'Bengali',
    'French'
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: foodCategories.length, vsync: this);

    _scrollController.addListener(() {
      // Calculate the current index based on the scroll position
      int currentIndex =
          (_scrollController.offset / (MediaQuery.of(context).size.width / 2))
              .floor();

      // Ensure the index is within the valid range
      currentIndex = currentIndex.clamp(0, foodCategories.length - 1);

      // Update the TabController index
      _tabController.animateTo(currentIndex);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TabBar(
            labelColor: Colors.orange,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.orange,
            controller: _tabController,
            isScrollable: true,
            tabs: foodCategories.map((category) {
              return Tab(
                text: category,
              );
            }).toList(),
          ),
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.vertical,
              itemCount: foodCategories.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: const Center(
                    child: CustomCounterWidget(
                      title: 'Burger',
                      subtitle: '140',
                      maxCounter: 10,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
