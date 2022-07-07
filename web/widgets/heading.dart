import 'package:dawn/dawn.dart';

class Heading extends StatelessWidget {
  final Widget child;

  const Heading(this.child, {super.key});

  @override
  Widget build(final Context context) {
    return Container(
      [child],
      style: const Style({
        'font-size': '20px',
        'font-weight': '700',
        'margin-top': '16px',
      }),
    );
  }
}
