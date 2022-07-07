import 'package:dawn/dawn.dart';

class SubHeading extends StatelessWidget {
  final Widget child;

  const SubHeading(this.child, {super.key});

  @override
  Widget build(final Context context) {
    return Container(
      [child],
      style: const Style({
        'font-size': '18px',
        'font-weight': '600',
        'margin-top': '8px',
        'line-height': '1',
      }),
    );
  }
}
