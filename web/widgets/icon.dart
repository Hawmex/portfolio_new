import 'package:dawn/dawn.dart';

class Icon extends StatelessWidget implements Text {
  @override
  final String value;

  @override
  final EventListener? onPointerDown;
  @override
  final EventListener? onPointerUp;
  @override
  final EventListener? onPointerEnter;
  @override
  final EventListener? onPointerLeave;
  @override
  final EventListener? onPress;
  @override
  final Style? style;
  @override
  final Animation? animation;

  const Icon(
    this.value, {
    this.onPointerDown,
    this.onPointerUp,
    this.onPointerEnter,
    this.onPointerLeave,
    this.onPress,
    this.style,
    this.animation,
    super.key,
  });

  @override
  Widget build(final Context context) {
    return Text(
      value,
      onPointerDown: onPointerDown,
      onPointerUp: onPointerUp,
      onPointerEnter: onPointerEnter,
      onPointerLeave: onPointerLeave,
      onPress: onPress,
      animation: animation ??
          const Animation(
            keyframes: [
              {'transform': 'rotate(-90deg)'},
              {'transform': 'scale(0deg)'},
            ],
            options: {
              'duration': 300,
              'easing': 'cubic-bezier(0.4, 0, 0.2, 1)',
            },
          ),
      style: Style({
        'font-family': 'Material Icons',
        'font-weight': 'normal',
        'font-style': 'normal',
        'font-size': '24px',
        'line-height': '1',
        'letter-spacing': 'normal',
        'text-transform': 'none',
        'display': 'inline-block',
        'white-space': 'nowrap',
        'word-wrap': 'normal',
        'direction': 'ltr',
        '-webkit-font-feature-settings': 'liga',
        '-webkit-font-smoothing': 'antialiased',
        ...(style ?? const Style({})).rules,
      }),
    );
  }
}
