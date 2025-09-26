import 'package:app_tl_land_3212/core/di/service_locator.dart';
import 'package:app_tl_land_3212/common/blocs/select/select_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

void goToHome(BuildContext context) {
  final pageController = sl<PageController>();
  context.read<SelectBloc<int>>().add(const SelectEvent.select(0));
  pageController.jumpToPage(0);
}

void goToSearch(BuildContext context) {
  final pageController = sl<PageController>();
  context.read<SelectBloc<int>>().add(const SelectEvent.select(1));
  pageController.jumpToPage(1);
}

void goToAdd(BuildContext context) {
  final pageController = sl<PageController>();
  context.read<SelectBloc<int>>().add(const SelectEvent.select(4));
  pageController.jumpToPage(2);
}


void goToNotification(BuildContext context) {
  final pageController = sl<PageController>();
  context.read<SelectBloc<int>>().add(const SelectEvent.select(2));
  pageController.jumpToPage(3);
}

void goToProfile(BuildContext context) {
  final pageController = sl<PageController>();
  context.read<SelectBloc<int>>().add(const SelectEvent.select(3));
  pageController.jumpToPage(4);
}