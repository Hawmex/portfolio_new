import 'package:dawn/dawn.dart';

import 'icon.dart';

class Button extends StatefulWidget {
  final String text;
  final String icon;
  final EventListener? onPress;

  const Button({
    required this.text,
    required this.icon,
    this.onPress,
    super.key,
  });

  @override
  State createState() => ButtonState();
}

class ButtonState extends State<Button> {
  String background = 'transparent';
  String transitionDuration = '250ms';

  @override
  Widget build(final Context context) {
    return Container(
      [
        Icon(widget.icon),
        Text(widget.text),
      ],
      onPointerEnter: (final event) => setState(() {
        background = 'rgba(255, 255, 255, 0.08)';
        transitionDuration = '300ms';
      }),
      onPointerLeave: (final event) => setState(() {
        background = 'transparent';
        transitionDuration = '250ms';
      }),
      onPointerDown: (final event) => setState(() {
        background = 'rgba(255, 255, 255, 0.16)';
        transitionDuration = '300ms';
      }),
      onPointerUp: (final event) => setState(() {
        background = 'rgba(255, 255, 255, 0.08)';
        transitionDuration = '250ms';
      }),
      onPress: widget.onPress,
      style: Style({
        'display': 'flex',
        'width': 'max-content',
        'align-items': 'center',
        'padding': '8px',
        'background': background,
        'pointer-events': widget.onPress == null ? 'none' : 'all',
        'color':
            widget.onPress == null ? 'rgba(255, 255, 255, 0.64)' : '#ffffff',
        'transition':
            'background $transitionDuration cubic-bezier(0.4, 0, 0.2, 1)',
        'font-weight': '500',
        'user-select': 'none',
        'border-radius': '8px',
        'cursor': 'pointer',
        'gap': '8px',
      }),
      animation: const Animation(
        keyframes: [
          {'transform': 'scale(0.8)'},
          {'transform': 'scale(1)'},
        ],
        options: {
          'duration': 300,
          'easing': 'cubic-bezier(0.4, 0, 0.2, 1)',
        },
      ),
    );
  }
}
