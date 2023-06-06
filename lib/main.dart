import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';

import 'screens/creens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: const Listview2Screen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: (settings) {
        return AppRoutes.onGenerateRoute(settings);
      },
      theme: AppTheme.lightTheme,
      // onGenerateRoute: AppRoutes.onGenerateRoute,
      );
  }
}
