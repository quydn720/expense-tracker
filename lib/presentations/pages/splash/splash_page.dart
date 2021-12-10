// import 'package:expense_tracker/presentations/pages/main/main_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../app/auth/auth_bloc.dart';
// import '../../../constants.dart';
// import '../../../size_config.dart';

// class SplashPage extends StatelessWidget {
//   static String routeName = '/splash_page';
//   const SplashPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//     // TODO: Check shared preferences xem thu user co phai lan dau mo app k
//     return BlocListener<AuthBloc, AuthState>(
//       listener: (context, state) {
//         state.map(
//           initial: (_) {},
//           authenticated: (auth) {
//             print(
//                 'authenticated. name: ${auth.user.name}. email: ${auth.user.email}');
//             Navigator.pushReplacementNamed(context, MainPage.routeName);
//           },
//           unauthenticated: (_) {
//             print('not authenticated');
//             // Navigator.pushReplacementNamed(context, SignInPage.routeName);
//           },
//         );
//       },
//       child: Scaffold(
//         body: Container(
//           color: kViolet100,
//         ),
//       ),
//     );
//   }
// }
