import 'package:wedding/repositories.dart';

var getRoutes = [
  GetPage(
    name: '/',
    page: () => const Invitation(),
    parameters: const {
      'name': 'Invitation',
    },
    transition: Transition.cupertino,
  ),
];
