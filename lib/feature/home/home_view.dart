import 'package:flutter/material.dart';
import 'package:three_d_app/feature/home/char_detail_view.dart';
import 'package:three_d_app/utils/enums/chararter.dart';

@immutable
final class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
        itemBuilder: (context, value) {
          return Card(
            color: Colors.white30,
            margin: const EdgeInsets.all(8),
            child: SizedBox(
              child: ListTile(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CharDetailView(
                              charInfo: Character.values[value],
                            ))),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.car_crash,
                      size: 30,
                    ),
                    Text(
                      Character.values[value].name,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: Character.values.length,
      ),
    ));
  }
}
