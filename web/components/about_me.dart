import 'package:dawn/dawn.dart';

import '../widgets/heading.dart';

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
