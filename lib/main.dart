import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebase_complete/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:login_firebase_complete/src/repository/authentication_repository/authentication_repository.dart';
import 'package:login_firebase_complete/src/utils/theme/theme.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,name: 'Login');
  Get.put(AuthenticationRepository());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      home: SplashScreen(),
    );
  }
}

// class AppHome extends StatelessWidget {
//   const AppHome({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           backgroundColor: Colors.purple,
//           title: const Text(".appable/"),
//           leading: const Icon(Icons.ondemand_video)),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add_shopping_cart_outlined),
//         onPressed: () {},
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: ListView(
//           children: [
//             Text(
//               "Heading",
//               style: Theme.of(context).textTheme.headline2,
//             ),
//             Text(
//               "Sub-heading",
//               style: Theme.of(context).textTheme.subtitle2,
//             ),
//             Text(
//               "Paragraph",
//               style: Theme.of(context).textTheme.bodyText1,
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               child: const Text("Elevated Button"),
//             ),
//             OutlinedButton(
//               onPressed: () {},
//               child: const Text("Outlined Button"),
//             ),
//             const Padding(
//               padding: EdgeInsets.all(20.0),
//               child: Image(image: AssetImage("assets/images/books.jpg")),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
