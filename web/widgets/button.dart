import 'package:dawn/dawn.dart';

import 'icon.dart';

class Button extends StatefulWidget {
  final String? text;
  final String? icon;
  final EventListener? onPress;

  const Button({
    this.text,
    this.icon,
    this.onPress,
    super.key,
  });

  @override
  State createState() => ButtonState();
}

class ButtonState extends State<Button> {
  String overlayBackground = 'transparent';
  String overlayTransitionDuration = '250ms';

  @override
  Widget build(final Context context) {
    return Container(
      [
        if (widget.icon != null) Icon(widget.icon!),
        if (widget.text != null) Text(widget.text!),
        Container(
          [],
          style: Style({
            'position': 'absolute',
            'width': '100%',
            'height': '100%',
            'left': '0px',
            'top': '0px',
            'pointer-events': 'none',
            'background': overlayBackground,
            'transition':
                'background $overlayTransitionDuration cubic-bezier(0.4, 0, 0.2, 1)',
          }),
        ),
      ],
      onPointerEnter: (final event) => setState(() {
        overlayBackground = 'rgb(var(--accent-color) / 0.08)';
        overlayTransitionDuration = '300ms';
      }),
      onPointerLeave: (final event) => setState(() {
        overlayBackground = 'transparent';
        overlayTransitionDuration = '250ms';
      }),
      onPointerDown: (final event) => setState(() {
        overlayBackground = 'rgb(var(--accent-color) / 0.16)';
        overlayTransitionDuration = '300ms';
      }),
      onPointerUp: (final event) => setState(() {
        overlayBackground = 'rgb(var(--accent-color) / 0.08)';
        overlayTransitionDuration = '250ms';
      }),
      onPress: widget.onPress,
      style: Style({
        'display': 'flex',
        'position': 'relative',
        'width': 'max-content',
        'align-items': 'center',
        'overflow': 'hidden',
        'padding': '8px',
        'background': 'transparent',
        'pointer-events': widget.onPress == null ? 'none' : 'all',
        'color': 'rgb(var(--accent-color))',
        'opacity': widget.onPress == null ? '0.64' : '1',
        'font-variation-settings': '"wght" 500',
        'user-select': 'none',
        'border-radius': widget.text == null ? '50%' : '8px',
        'cursor': 'pointer',
        'gap': '8px',
      }),
      animation: const Animation(
        [
          Style({'transform': 'scale(0.8)'}),
          Style({'transform': 'scale(1)'}),
        ],
        duration: Duration(milliseconds: 300),
        easing: Easing.cubicBezier(0.4, 0, 0.2, 1),
      ),
    );
  }
}
