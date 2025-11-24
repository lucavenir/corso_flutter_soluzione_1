import "package:color_changer/state/cats.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class CatsPage extends ConsumerWidget {
  const CatsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cats = ref.watch(catsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cats"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 5,
          children: [
            if (cats case AsyncValue(:final value?))
              for (final cat in value)
                Column(
                  children: [
                    Text("id: ${cat.id}"),
                    const SizedBox(height: 16),
                    Image.network(cat.imageUrl),
                  ],
                ),
          ],
        ),
      ),
    );
  }
}
