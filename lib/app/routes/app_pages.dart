import 'package:get/get.dart';

import '../modules/addPaymentCard/bindings/add_payment_card_binding.dart';
import '../modules/addPaymentCard/views/add_payment_card_view.dart';
import '../modules/allChats/bindings/all_chats_binding.dart';
import '../modules/allChats/views/all_chats_view.dart';
import '../modules/categoryResult/bindings/category_result_binding.dart';
import '../modules/categoryResult/views/category_result_view.dart';
import '../modules/chatting/bindings/chatting_binding.dart';
import '../modules/chatting/views/chatting_view.dart';
import '../modules/earnings/bindings/earnings_binding.dart';
import '../modules/earnings/views/earnings_view.dart';
import '../modules/favorites/bindings/favorites_binding.dart';
import '../modules/favorites/views/favorites_view.dart';
import '../modules/forgetPassword/bindings/forget_password_binding.dart';
import '../modules/forgetPassword/views/forget_password_view.dart';
import '../modules/freelancerDetail/bindings/freelancer_detail_binding.dart';
import '../modules/freelancerDetail/views/freelancer_detail_view.dart';
import '../modules/freelancerHome/bindings/freelancer_home_binding.dart';
import '../modules/freelancerHome/views/freelancer_home_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/landingView/bindings/landing_view_binding.dart';
import '../modules/landingView/views/landing_view_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/myProfile/bindings/my_profile_binding.dart';
import '../modules/myProfile/views/my_profile_view.dart';
import '../modules/notifications/bindings/notifications_binding.dart';
import '../modules/notifications/views/notifications_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/orders/bindings/orders_binding.dart';
import '../modules/orders/views/orders_view.dart';
import '../modules/packagesMetaData/bindings/packages_meta_data_binding.dart';
import '../modules/packagesMetaData/views/packages_meta_data_view.dart';
import '../modules/paymentOptions/bindings/payment_options_binding.dart';
import '../modules/paymentOptions/views/payment_options_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/updatePassword/bindings/update_password_binding.dart';
import '../modules/updatePassword/views/update_password_view.dart';
import '../modules/verification/bindings/verification_binding.dart';
import '../modules/verification/views/verification_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    // GetPage(
    //   name: _Paths.HOME,
    //   page: () => const HomeView(),
    //   binding: HomeBinding(),
    // ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.FORGET_PASSWORD,
      page: () => const ForgetPasswordView(),
      binding: ForgetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.VERIFICATION,
      page: () => const VerificationView(),
      binding: VerificationBinding(),
    ),
    GetPage(
      name: _Paths.UPDATE_PASSWORD,
      page: () => const UpdatePasswordView(),
      binding: UpdatePasswordBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.FREELANCER_DETAIL,
      page: () => const FreelancerDetailView(),
      binding: FreelancerDetailBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT_OPTIONS,
      page: () => const PaymentOptionsView(),
      binding: PaymentOptionsBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PAYMENT_CARD,
      page: () => const AddPaymentCardView(),
      binding: AddPaymentCardBinding(),
    ),
    GetPage(
      name: _Paths.FREELANCER_HOME,
      page: () => const FreelancerHomeView(),
      binding: FreelancerHomeBinding(),
    ),
    // GetPage(
    //   name: _Paths.CATEGORY_RESULT,
    //   page: () => const CategoryResultView(),
    //   binding: CategoryResultBinding(),
    // ),
    // GetPage(
    //   name: _Paths.ALL_CHATS,
    //   page: () => const AllChatsView(),
    //   binding: AllChatsBinding(),
    // ),
    GetPage(
      name: _Paths.CHATTING,
      page: () => const ChattingView(),
      binding: ChattingBinding(),
    ),
    // GetPage(
    //   name: _Paths.ORDERS,
    //   page: () => const OrdersView(),
    //   binding: OrdersBinding(),
    // ),
    // GetPage(
    //   name: _Paths.PROFILE,
    //   page: () => const ProfileView(),
    //   binding: ProfileBinding(),
    // ),
    GetPage(
      name: _Paths.NOTIFICATIONS,
      page: () => const NotificationsView(),
      binding: NotificationsBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITES,
      page: () => const FavoritesView(),
      binding: FavoritesBinding(),
    ),
    GetPage(
      name: _Paths.EARNINGS,
      page: () => const EarningsView(),
      binding: EarningsBinding(),
    ),
    GetPage(
      name: _Paths.MY_PROFILE,
      page: () => const MyProfileView(),
      binding: MyProfileBinding(),
    ),
    GetPage(
      name: _Paths.PACKAGES_META_DATA,
      page: () => const PackagesMetaDataView(),
      binding: PackagesMetaDataBinding(),
    ),
    GetPage(
      name: _Paths.LANDING_VIEW,
      page: () => const LandingViewView(),
      binding: LandingViewBinding(),
    ),
  ];
}
