import 'package:e_commerce_full/pages/cart/cart_home.dart';
import 'package:e_commerce_full/pages/favorite/favorite_home.dart';
import 'package:e_commerce_full/pages/home/home_page_index.dart';
import 'package:e_commerce_full/pages/order_history/order_history_home.dart';
import 'package:line_icons/line_icons.dart';

List sideMenuItems = [
  {
    "label": "Home",
    "selected": true,
    "icon": LineIcons.home,
    "page": const HomePageIndex()
  },
  {
    "label": "My Cart",
    "selected": false,
    "icon": LineIcons.shoppingCart,
    "page": CartHome()
  },
  {
    "label": "Favorite",
    "selected": false,
    "icon": LineIcons.heart,
    "page": const FavoritePage()
  },
  {
    "label": "Orders",
    "selected": false,
    "icon": LineIcons.history,
    "page": const OrderHistoryHome()
  },
];
