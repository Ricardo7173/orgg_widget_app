import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text('Hola Mundo'),
              action: SnackBarAction(
                label: 'Aceptar', 
                onPressed: () { }
              ),
              duration: const Duration(seconds: 3),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              child: const Text('Licencias usadas'), 
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Et cillum nisi ea exercitation cupidatat laborum amet voluptate. Dolore incididunt laborum culpa mollit reprehenderit deserunt ea. Amet nisi do est nisi occaecat. Dolor occaecat laboris minim non commodo nisi cillum id enim. Elit sint voluptate irure sint velit quis in deserunt mollit duis. Minim velit est do quis ex occaecat velit enim ipsum aute reprehenderit laborum. Ipsum proident occaecat exercitation ea velit quis.')
                  ]
                );
               },
            ),
            FilledButton.tonal(
              child: const Text('Mostrar diálogo'), 
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Et cillum nisi ea exercitation cupidatat laborum amet voluptate. Dolore incididunt laborum culpa mollit reprehenderit deserunt ea. Amet nisi do est nisi occaecat. Dolor occaecat laboris minim non commodo nisi cillum id enim. Elit sint voluptate irure sint velit quis in deserunt mollit duis. Minim velit est do quis ex occaecat velit enim ipsum aute reprehenderit laborum. Ipsum proident occaecat exercitation ea velit quis.')
                  ]
                );
               },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar SnackBar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}