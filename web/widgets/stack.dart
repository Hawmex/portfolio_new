import 'package:dawn/dawn.dart';

class Stack extends StatelessWidget {
  final List<Widget> children;

  const Stack({required this.children, super.key});

  @override
  Widget build(final Context context) {
    return Container(
      children: children,
      style: const Style({
        'display': 'flex',
        'gap': '8px',
        'align-items': 'center',
      }),
    );
  }
}
