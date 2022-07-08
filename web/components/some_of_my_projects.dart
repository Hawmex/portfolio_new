import 'package:dawn/dawn.dart';

import '../widgets/heading.dart';
import '../widgets/link.dart';
import '../widgets/subheading.dart';

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
      '⚡ This portfolio is made with Dawn :)',
      style: Style({'font-variation-settings': '"wght" 600'}),
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
