import 'dart:html';

import 'package:dawn/dawn.dart';

import 'components/about_me.dart';
import 'components/some_of_my_projects.dart';
import 'widgets/bottom_bar.dart';
import 'widgets/button.dart';
import 'widgets/top_bar.dart';

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({super.key});

  @override
  State createState() => _AppState();
}

class _AppState extends State<App> {
  bool darkMode = window.matchMedia('(prefers-color-scheme: dark)').matches;

  void toggleDarkMode() => setState(() => darkMode = !darkMode);

  @override
  Widget build(final Context context) {
    return Container(
      children: [
        TopBar(
          leading: [
            Container(
              children: [
                Button(
                  icon: darkMode ? 'dark_mode' : 'light_mode',
                  onPress: (final event) => toggleDarkMode(),
                ),
                const Text(
                  'Hamed Aarab',
                  style: Style({
                    'font-variation-settings': '"wght" 600',
                    'color': 'rgb(var(--accent-color))',
                  }),
                )
              ],
              style: const Style({
                'display': 'flex',
                'gap': '24px',
                'align-items': 'center',
              }),
            ),
          ],
          trailing: [
            Button(
              icon: 'email',
              onPress: (final event) => window.open(
                'mailto:hamed.aarab.02@gmail.com',
                'Hamed Aarab\'s Email',
              ),
            ),
            Button(
              text: 'GitHub',
              icon: 'open_in_new',
              onPress: (final event) => window.open(
                'https://github.com/Hawmex',
                'Hamed Aarab\'s GitHub',
              ),
            ),
          ],
        ),
        Container(
          children: [...aboutMe(), ...someOfMyProjects()],
          style: const Style({
            'display': 'flex',
            'flex-flow': 'column',
            'gap': '8px',
            'padding': '16px',
            'overflow-y': 'auto',
          }),
          animation: const Animation(
            keyframes: [
              Style({'opacity': '0'}),
              Style({'opacity': '1'}),
            ],
            duration: Duration(milliseconds: 300),
            easing: Easing.cubicBezier(0.4, 0, 0.2, 1),
          ),
        ),
        const BottomBar(
          children: [Text('?? Hamed Aarab, All Rights Reserved.')],
        ),
      ],
      style: Style({
        '--accent-color': '0 137 123',
        '--on-accent-color': '255 255 255',
        '--link-color': '30 136 229',
        '--surface-color': darkMode ? '0 0 0' : '255 255 255',
        '--on-surface-color': darkMode ? '255 255 255' : '0 0 0',
        'font-family': 'Jost VF',
        'font-size': '16px',
        'width': '100vw',
        'height': '100vh',
        'overflow': 'hidden',
        'display': 'grid',
        'accent-color': 'rgb(var(--accent-color))',
        'grid-template-rows': 'max-content 1fr max-content',
        'background': 'rgb(var(--surface-color))',
        'color': 'rgb(var(--on-surface-color))',
        'transition': 'all 300ms cubic-bezier(0.4, 0, 0.2, 1)',
      }),
    );
  }
}
