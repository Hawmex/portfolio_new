import 'package:dawn/dawn.dart';

class TopBar extends StatelessWidget {
  final List<Widget> leading;
  final List<Widget> trailing;

  const TopBar({required this.leading, required this.trailing, super.key});

  @override
  Widget build(final Context context) {
    return Container(
      [Stack(leading), Stack(trailing)],
      style: const Style({
        'display': 'flex',
        'justify-content': 'space-between',
        'padding': '8px',
        'gap': '8px',
        'align-items': 'center',
        'background': 'rgb(var(--on-surface-color) / 0.08)',
        'box-shadow': '0px 0px 3px 1px rgb(var(--on-surface-color) / 0.08)',
      }),
      animation: const Animation(
        [
          Style({'transform': 'translateY(-100%)'}),
          Style({'transform': 'translateY(0%)'}),
        ],
        duration: Duration(milliseconds: 300),
        easing: Easing.cubicBezier(0.4, 0, 0.2, 1),
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
