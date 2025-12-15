import "package:color_changer/router.dart";
import "package:color_changer/state/character.dart";
import "package:color_changer/state/review.dart";
import "package:color_changer/widgets/image_shimmer.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class CharactersPage extends ConsumerStatefulWidget {
  const CharactersPage({super.key});

  @override
  ConsumerState<CharactersPage> createState() => _CharactersPageState();
}

class _CharactersPageState extends ConsumerState<CharactersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rick And morty"),
        actions: [
          Consumer(
            builder: (context, ref, child) {
              final counter = ref.watch(reviewProvider).length;

              return Badge.count(
                count: counter,
                child: IconButton(
                  onPressed: showSaved,
                  icon: const Icon(Icons.bookmark),
                ),
              );
            },
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 3,
          mainAxisSpacing: 3,
        ),
        itemBuilder: (context, index) {
          final page = index ~/ 10 + 1;
          final list = ref.watch(getCharactersProvider(page));

          switch (list) {
            case AsyncLoading():
              return const ImageShimmer();
            case AsyncData(:final value):
              final offset = index % 10;
              final character = value[offset];

              if (character.image case final url) {
                return InkWell(
                  onTap: () async {
                    await router.push("/characters/${character.id}");
                  },
                  child: Image.network(
                    url,
                    fit: BoxFit.cover,
                  ),
                );
              }
            case AsyncError():
              return const Center(
                child: Text("uh-oh!"),
              );
          }
        },
      ),
    );
  }

  Future<void> showSaved() {
    return showDialog<void>(
      context: context,
      builder: (context) {
        return const SavedListWidget();
      },
    );
  }
}

class SavedListWidget extends ConsumerWidget {
  const SavedListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reviews = ref.watch(reviewProvider);

    return Dialog(
      child: ListView(
        children: [
          for (final review in reviews)
            ListTile(
              title: Text("Character ID: ${review.character.name}"),
              subtitle: Text("Review: ${review.comment}"),
              trailing: CircleAvatar(
                child: Text("${review.rating}"),
              ),
            ),
        ],
      ),
    );
  }
}
