import 'package:fl_components/models/models.dart';
import '../screens/creens.dart';

class AppRoutes {
  static const initialRoute = 'Home';

  static final menuOptions = <MenuOption>[
    // MenuOption(route: "Home", 
    // icon: Icons.home,
    // name: 'Home Screen',
    // screen: const HomeScreen()),
    MenuOption(route: "Listview1", 
    icon: Icons.list,
    name: 'Listview One',
    screen: const Listview1Screen()),
    MenuOption(route: "Listview2", 
    icon: Icons.list,
    name: 'Listview Two',
    screen: const Listview2Screen()),
    MenuOption(route: "Alert", 
    icon: Icons.bento_outlined,
    name: 'Alert',
    screen: const AlertScreen()),
    MenuOption(route: "Card", 
    icon: Icons.card_giftcard,
    name: 'Card',
    screen: const CardScreen()),
    MenuOption(route: "Circle Avatar", 
    icon: Icons.supervised_user_circle_outlined,
    name: 'Avatar Screen',
    screen: const AvatarScreen()),
    MenuOption(route: "Animated Screen", 
    icon: Icons.play_circle_outline_rounded,
    name: 'Animated Screen',
    screen: const InputsScreen()),
    MenuOption(route: "Inputs Screen", 
    icon: Icons.input_rounded,
    name: 'Inputs Screen',
    screen: const InputsScreen()),
    MenuOption(route: "Slider && Checks", 
    icon: Icons.slideshow_sharp,
    name: 'Slider && Checks',
    screen: const SliderScreen()),
    MenuOption(route: "ListViewBuilder", 
    icon: Icons.build_circle_outlined,
    name: 'InfiniteScroll and Pull to Refresh',
    screen: const ListViewBuilderScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'Home': (BuildContext context) => const HomeScreen()});
    for(final option in menuOptions){
      appRoutes.addAll({option.route:(BuildContext context) => option.screen});
    }
    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'Home': (context) => const HomeScreen(),
  //   'Listview1': (context) => const Listview1Screen(),
  //   'Listview2': (context) => const Listview2Screen(),
  //   'Alert': (context) => const AlertScreen(),
  //   'Card': (context) => const CardScreen()
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings){    
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  } 
}
