import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botones'),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () => context.pop(),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated button')),
            const ElevatedButton(onPressed: null, child: const Text('Elevated disable')),
            ElevatedButton.icon(
              onPressed: () {}, 
              label: const Text('elevated icon'),
              icon: const Icon(Icons.earbuds_battery),
              ),
            FilledButton(onPressed: () {}, child: const Text('Filled button')),
            FilledButton.icon(
              onPressed: () {}, 
              label: const Text('elevated icon'),
              icon: const Icon(Icons.star),
            ),
            OutlinedButton(onPressed: () {}, child: const Text('Outline button')),
            OutlinedButton.icon(
              onPressed: () {}, 
              label: const Text('outline icon'),
              icon: const Icon(Icons.star),
            ),
            TextButton(onPressed: () {}, child: const Text('Text button')),
            TextButton.icon(
              onPressed: () {}, 
              label: const Text('Text icon'),
              icon: const Icon(Icons.star),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.star_border_outlined),),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.star),
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.orange),
                iconColor: WidgetStatePropertyAll(Colors.blue)
              ),
            ),
          ],
        ),
      ),
    );
  }
}