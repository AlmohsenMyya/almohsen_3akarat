import 'controller/home_listing_satelite_controller.dart';import 'dart:async';import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/presentation/home_page/home_page.dart';import 'package:almohsen_3akarat/presentation/home_search_page/home_search_page.dart';import 'package:almohsen_3akarat/presentation/message_page/message_page.dart';import 'package:almohsen_3akarat/presentation/my_home_page/my_home_page.dart';import 'package:almohsen_3akarat/presentation/profile_page/profile_page.dart';import 'package:almohsen_3akarat/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';
// ignore_for_file: must_be_immutable
class HomeListingSateliteScreen extends GetWidget<HomeListingSateliteController> {HomeListingSateliteScreen({Key? key}) : super(key: key);

Completer<GoogleMapController> googleMapController = Completer();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(height: 693.v, width: double.maxFinite, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homePage; case BottomBarEnum.Message: return AppRoutes.messagePage; case BottomBarEnum.Discover: return AppRoutes.homeSearchPage; case BottomBarEnum.Myhome: return AppRoutes.myHomePage; case BottomBarEnum.Profile: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homePage: return HomePage(); case AppRoutes.messagePage: return MessagePage(); case AppRoutes.homeSearchPage: return HomeSearchPage(); case AppRoutes.myHomePage: return MyHomePage(); case AppRoutes.profilePage: return ProfilePage(); default: return DefaultWidget();} } 
 }
