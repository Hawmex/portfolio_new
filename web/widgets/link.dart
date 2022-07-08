import 'dart:html';

import 'package:dawn/dawn.dart';

import 'icon.dart';

class Link extends StatelessWidget {
  final String text;
  final String url;

  const Link({required this.text, required this.url, super.key});

  @override
  Widget build(final Context context) {
    return Container(
      [Text(text), const Icon('open_in_new')],
      onPress: (final event) => window.open(url, text),
      style: const Style({
        'display': 'inline-flex',
        'gap': '8px',
        'align-items': 'center',
        'color': 'rgb(var(--link-color))',
        'cursor': 'pointer',
      }),
    );
  }
}
