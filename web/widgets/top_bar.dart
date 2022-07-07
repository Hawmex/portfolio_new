import 'package:dawn/dawn.dart';

class TopBar extends StatelessWidget {
  final List<Widget> leading;
  final List<Widget> trailing;

  const TopBar({required this.leading, required this.trailing, super.key});

  @override
  Widget build(final Context context) {
    return Container(
      [
        Stack(leading),
        Stack(trailing),
      ],
      style: const Style({
        'display': 'flex',
        'justify-content': 'space-between',
        'padding': '8px',
        'gap': '8px',
        'background': 'rgba(0, 0, 0, 0.16)',
        'align-items': 'center',
      }),
      animation: const Animation(
        keyframes: [
          {'transform': 'translateY(-100%)'},
          {'transform': 'translateY(0%)'},
        ],
        options: {
          'duration': 300,
          'easing': 'cubic-bezier(0.4, 0, 0.2, 1)',
        },
      ),
    );
  }
}

class Stack extends StatelessWidget {
  final List<Widget> children;

  const Stack(this.children, {super.key});

  @override
  Widget build(Context context) {
    return Container(
      children,
      style: const Style({
        'display': 'flex',
        'gap': '8px',
        'align-items': 'center',
      }),
    );
  }
}
