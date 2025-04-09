import 'package:flutter/material.dart';
import 'package:portfolio/constants/nav_items.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key, required this.onNavItemTap});

  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.close),
          color: Colors.purple,
        ),
      ),
      body: Center(
          child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          for (int i = 0; i < navTitles.length; i++)
            ListTile(
              onTap: () {
                onNavItemTap(i);
              },
              title: Text(
                navTitles[i],
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            )
        ],
      )),
    );
  }
}
