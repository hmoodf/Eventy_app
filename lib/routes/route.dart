import 'package:EventySA/views/pages/drawer/create_card/create_card.dart';
import 'package:EventySA/views/pages/home/cards.dart';
import 'package:EventySA/views/pages/drawer/manage_event/choos_paraticipate.dart';
import 'package:EventySA/views/pages/drawer/manage_event/creator_notifications.dart';
import 'package:EventySA/views/pages/home/event_details.dart';
import 'package:EventySA/views/pages/home/favorites.dart';
import 'package:EventySA/views/pages/home/home.dart';
import 'package:EventySA/views/pages/drawer/manage_event/manage_event.dart';
import 'package:EventySA/views/pages/home/notifications.dart';
import 'package:EventySA/views/pages/drawer/participate_event/participate.dart';
import 'package:EventySA/views/pages/drawer/manage_event/privet_event.dart';
import 'package:EventySA/views/pages/home/profile.dart';
import 'package:EventySA/views/pages/drawer/settings/profile_edit.dart';
import 'package:EventySA/views/pages/drawer/settings/profile_privacy.dart';
import 'package:EventySA/views/pages/drawer/manage_event/public_event.dart';
import 'package:EventySA/views/pages/home/search.dart';
import 'package:EventySA/views/pages/drawer/manage_event/select_plan.dart';
import 'package:EventySA/views/pages/drawer/settings/settings.dart';
import 'package:EventySA/views/pages/signin/sign_in.dart';
import 'package:EventySA/views/pages/signup/sign_up.dart';
import 'package:EventySA/views/pages/signup/sign_up2.dart';
import 'package:EventySA/views/pages/onboarding/onboarding.dart';
import 'package:EventySA/views/pages/home/buttom_navbar.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Routes {
  static final routes = [
    GetPage(name: "/Onboarding", page: () => OnboardingPage()),
    GetPage(name: "/BottomNav", page: () => BottomNav()),
    GetPage(name: "/Home", page: () => HomePage()),
    GetPage(name: "/SignIn", page: () => SignIn()),
    GetPage(name: "/SignUp", page: () => SignUp()),
    GetPage(name: "/SignUp2", page: () => SignUp2()),
    GetPage(name: "/Favorite", page: () => FavoritePage()),
    GetPage(name: "/Search", page: () => SearchPage()),
    GetPage(name: "/Card", page: () => CardPage()),
    GetPage(name: "/Profile", page: () => ProfilePage()),
    GetPage(name: "/ManageEvent", page: () => ManageEvent()),
    GetPage(name: "/Participate", page: () => Participate()),
    GetPage(name: "/Setting", page: () => Setting()),
    GetPage(name: "/ProfileEdit", page: () => ProfileEdit()),
    GetPage(name: "/ProfilePrivacy", page: () => ProfilePrivacy()),
    GetPage(name: "/SelectPlan", page: () => SelectPlan()),
    GetPage(name: "/PublicEvent", page: () => PublicEvent()),
    GetPage(name: "/PrivetEvent", page: () => PrivetEvent()),
    GetPage(name: "/NotificationPage", page: () => NotificationPage()),
    GetPage(name: "/CreatorNotification", page: () => CreatorNotification()),
    GetPage(name: "/CreateCard", page: () => CreateCard()),
    GetPage(name: "/ChooseParticipate", page: () => ChooseParticipate()),
    GetPage(name: "/EventDetails", page: () => EventDetails()),
  ];
}
