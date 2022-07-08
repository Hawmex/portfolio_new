import 'dart:html';

import 'package:dawn/dawn.dart';

import 'components/about_me.dart';
import 'components/some_of_my_projects.dart';
import 'widgets/bottom_bar.dart';
import 'widgets/button.dart';
import 'widgets/top_bar.dart';

final appStore = AppStore();

void main() => runApp(const App());

class AppStore extends Store {
  bool darkMode = window.matchMedia('(prefers-color-scheme: dark)').matches;

  void toggleDarkMode() => setState(() => darkMode = !darkMode);
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State createState() => AppState();
}

class AppState extends State<App> {
  @override
  void initialize() {
    super.initialize();
    appStore.onUpdate(() => setState(() {}));
  }

  @override
  Widget build(final Context context) {
    return Container(
      [
        TopBar(
          leading: [
            Container(
              [
                Button(
                  icon: appStore.darkMode ? 'dark_mode' : 'light_mode',
                  onPress: (final event) => appStore.toggleDarkMode(),
                ),
                const Text(
                  'Hamed Aarab',
                  style: Style({'font-variation-settings': '"wght" 600'}),
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
                'Hawmex on GitHub',
              ),
            ),
          ],
        ),
        Container(
          [...aboutMe(), ...someOfMyProjects()],
          style: const Style({
            'display': 'flex',
            'flex-flow': 'column',
            'gap': '8px',
            'padding': '16px',
            'overflow-y': 'auto',
          }),
          animation: const Animation(
            keyframes: [
              {'opacity': '0'},
              {'opacity': '1'},
            ],
            options: {
              'duration': 300,
              'easing': 'cubic-bezier(0.4, 0, 0.2, 1)',
            },
          ),
        ),
        const BottomBar([Text('© Hamed Aarab, All Rights Reserved.')]),
      ],
      style: Style({
        '--accent-color': '174 42 255',
        '--on-accent-color': '255 255 255',
        '--link-color': '0 136 196',
        '--surface-color': appStore.darkMode ? '0 0 0' : '255 255 255',
        '--on-surface-color': appStore.darkMode ? '255 255 255' : '0 0 0',
        'font-family': 'Jost VF',
        'font-size': '16px',
        'width': '100vw',
        'height': '100vh',
        'overflow': 'hidden',
        'display': 'grid',
        'grid-template-rows': 'max-content 1fr max-content',
        'background': 'rgb(var(--surface-color))',
        'color': 'rgb(var(--on-surface-color))',
        'transition': 'all 300ms cubic-bezier(0.4, 0, 0.2, 1)',
      }),
    );
  }
}
