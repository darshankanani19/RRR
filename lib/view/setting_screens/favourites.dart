import 'package:flutter/material.dart';
import 'package:project_management/consts/const.dart';
import 'package:project_management/consts/list.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightCream,
      appBar: AppBar(title: "Favourites".text.fontFamily(bold).make()),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: favouritesList.length,
        itemBuilder: (context, index) {
          final fav = favouritesList[index];
          return ListTile(
            leading: const Icon(Icons.favorite, color: Purple),
            title: fav['title']!.text.fontFamily(semibold).color(Colors.black).make(),
            subtitle: fav['details']!.text.color(Colors.black54).make(),
          );
        },
      ),
    );
  }
}
