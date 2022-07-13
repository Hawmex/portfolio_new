import 'package:dawn/dawn.dart';

class SubHeading extends StatelessWidget {
  final Widget child;

  const SubHeading({required this.child, super.key});

  @override
  Widget build(final Context context) {
    return Container(
      children: [child],
      style: const Style({
        'font-size': '18px',
        'font-variation-settings': '"wght" 600',
        'margin-top': '8px',
        'line-height': '1',
      }),
    );
  }
}
