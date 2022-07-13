import 'package:dawn/dawn.dart';

class Heading extends StatelessWidget {
  final Widget child;

  const Heading({required this.child, super.key});

  @override
  Widget build(final Context context) {
    return Container(
      children: [child],
      style: const Style({
        'font-size': '20px',
        'font-variation-settings': '"wght" 700',
        'margin-top': '16px',
      }),
    );
  }
}
