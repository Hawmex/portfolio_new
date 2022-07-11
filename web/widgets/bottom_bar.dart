import 'package:dawn/dawn.dart';

class BottomBar extends StatelessWidget {
  final List<Widget> children;

  const BottomBar(this.children, {super.key});

  @override
  Widget build(final Context context) {
    return Container(
      children,
      style: const Style({
        'display': 'flex',
        'align-items': 'center',
        'justify-content': 'center',
        'flex-flow': 'column',
        'padding': '16px',
        'background': 'rgb(var(--on-surface-color) / 0.08)',
        'box-shadow': '0px 0px 3px 1px rgb(var(--on-surface-color) / 0.08)',
      }),
      animation: const Animation(
        [
          Style({'transform': 'translateY(100%)'}),
          Style({'transform': 'translateY(0%)'}),
        ],
        duration: Duration(milliseconds: 300),
        easing: Easing.cubicBezier(0.4, 0, 0.2, 1),
      ),
    );
  }
}
