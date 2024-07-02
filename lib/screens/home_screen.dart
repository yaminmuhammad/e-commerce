import 'package:ecommerce/constants.dart';
import 'package:ecommerce/widgets/home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: eScaffoldColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppbar(),
              const SizedBox(height: 10),
              Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: eContentColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 5,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Ionicons.search,
                        color: Colors.grey,
                      ),
                      Flexible(child: const Text('Search for products')),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
