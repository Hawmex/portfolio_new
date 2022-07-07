import 'dart:html';

import 'package:dawn/dawn.dart';

import 'widgets/button.dart';
import 'widgets/heading.dart';
import 'widgets/icon.dart';
import 'widgets/link.dart';
import 'widgets/subheading.dart';
import 'widgets/top_bar.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  List<Widget> aboutMe() {
    return const [
      Heading(Text('🙋‍♂️ About Me')),
      Text(
        'I\'m currently studying B.Sc. Industrial Engineering '
        'at Amirkabir University of Technology (Tehran Polytechnic).',
      ),
      Text(
        'I\'m also interested in programming, '
        'especially in front-end development.',
      )
    ];
  }

  List<Widget> someOfMyProjects() {
    return const [
      Heading(Text('📄 Some of My Projects')),
      SubHeading(Link(
        text: 'Dawn Framework',
        url: 'https://github.com/Hawmex/dawn',
      )),
      Text(
        'Dawn is a Dart Web Framework that lets developers to develop '
        'UIs with a widget model similar to Flutter. Dawn applications '
        'are compiled to JavaScript and are painted using HTML and CSS.',
      ),
      Text(
        'This portfolio is made with Dawn :)',
        style: Style({'font-family': '700'}),
      ),
      SubHeading(Link(
        text: 'Health Team Shopping App',
        url: 'https://healthteam.herokuapp.com',
      )),
      Text(
        'Health Team is a Full-Stack PWA that uses web components '
        'in front-end and MongoDB, Mongoose, and ExpressJS in '
        'back-end. IDPay APIs are used in payment services.',
      ),
      Image(
        '/assets/images/health-team-app-home.png',
        style: Style({
          'width': '512px',
          'max-width': '100%',
          'align-self': 'center',
          'margin-top': '4px',
          'border-radius': '8px',
        }),
      )
    ];
  }

  @override
  Widget build(final Context context) {
    return Container(
      [
        TopBar(
          leading: const [
            Container(
              [
                Icon('code'),
                Text('Hamed Aarab', style: Style({'font-weight': '600'}))
              ],
              style: Style({
                'display': 'flex',
                'gap': '16px',
                'padding': '8px',
                'align-items': 'center',
              }),
            ),
          ],
          trailing: [
            Button(
              text: 'Email',
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
          [
            ...aboutMe(),
            ...someOfMyProjects(),
          ],
          style: const Style({
            'display': 'flex',
            'flex-flow': 'column',
            'gap': '8px',
            'padding': '16px',
            'overflow-y': 'auto',
            'opacity': '0',
          }),
          animation: const Animation(
            keyframes: [
              {'opacity': '0'},
              {'opacity': '1'},
            ],
            options: {
              'duration': 300,
              'delay': 300,
              'fill': 'forwards',
              'easing': 'cubic-bezier(0.4, 0, 0.2, 1)',
            },
          ),
        ),
      ],
      style: const Style({
        'font-family': 'Jost VF',
        'font-size': '16px',
        'width': '100vw',
        'height': '100vh',
        'display': 'grid',
        'grid-template-rows': 'max-content 1fr',
        'background': '#001828',
        'color': '#ffffff',
      }),
    );
  }
}
