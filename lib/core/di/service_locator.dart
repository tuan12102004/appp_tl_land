import 'package:app_tl_land_3212/common/blocs/count_down/count_down_bloc.dart';
import 'package:app_tl_land_3212/common/blocs/dialog_observer/dialog_observer_bloc.dart';
import 'package:app_tl_land_3212/common/blocs/select/select_bloc.dart';
import 'package:app_tl_land_3212/config/router/post_routers.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/data/auth_data_module.dart';
import 'package:app_tl_land_3212/feature/auth/domain/auth_domain_module.dart';
import 'package:app_tl_land_3212/feature/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'service_locator.main.dart';
