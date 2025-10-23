
import 'package:app_tl_land_3212/common/blocs/select/select_bloc.dart';
import 'package:app_tl_land_3212/core/di/service_locator.dart';
import 'package:app_tl_land_3212/core/navigation/app_navigations.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/pages/add_description_page.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/pages/add_images_page.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/pages/add_owner_page.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/pages/edit_images_page.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/pages/edit_owner_page.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/pages/post_real_estate_edit_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CitySelectBloc extends SelectBloc<String> {}
class WardSelectBloc extends SelectBloc<String> {}

class PostRouters {
  PostRouters._();

  static final GoRoute routers = GoRoute(
    path: '/post',
    pageBuilder:
        (context, state) => buildPageWithSlideTransition(SizedBox(), state),
    routes: [
      GoRoute(
        path: 'edit',
        pageBuilder: (context, state) {
          final extraData = state.extra as Map<String, dynamic>;
          final realEstate = extraData['realEstate'];
          return buildPageWithSlideTransition(
            PostRealEstateEditPage(
              realEstate : realEstate
            ),
            state
          );
        }
      ),

      GoRoute(
        path: 'add-owner',
        pageBuilder: (context, state) {
          return buildPageWithSlideTransition(
            MultiBlocProvider(
              providers: [
                BlocProvider(create: (_) => sl<CitySelectBloc>()),
                BlocProvider(create: (_) => sl<WardSelectBloc>()),
              ],
              child: const AddOwnerPage(),
            ),
            state
          );
        }
      ),

      GoRoute(
        path: 'edit-owner',
        pageBuilder: (context, state) {
          final extraData = state.extra as Map<String, dynamic>;
          final item = extraData['item'];
          return buildPageWithSlideTransition(
             MultiBlocProvider(
              providers: [
                BlocProvider(create: (_) => sl<CitySelectBloc>()),
                BlocProvider(create: (_) => sl<WardSelectBloc>()),
              ],
              child: EditOwnerPage(
                item: item
              ),
            ),
            state
          );
        }
      ),

      GoRoute(
        path: 'add-decription',
        pageBuilder: (context, state) {
          final extraData = state.extra as Map<String, dynamic>;
          final controller = extraData['controller'];
          return buildPageWithSlideTransition(
            BlocProvider(
              create: (context) => sl<SelectBloc<int>>(),
              child: AddDescriptionPage(
                controller: controller,
              ),
            ),
            state
          );
        }
      ),

      GoRoute(
        path: 'add-images',
        pageBuilder: (context, state) {
          final extraData = state.extra as Map<String, dynamic>;
          final realEstateEntity = extraData['realEstateEntity'];
          final isEdit = extraData['isEdit'];
          return buildPageWithSlideTransition(
            AddImagesPage(
              realEstateEntity: realEstateEntity,
              isEdit: isEdit,
            ),
            state
          );
        }
      ),

      GoRoute(
        path: 'edit-images',
        pageBuilder: (context, state) {
          final extraData = state.extra as Map<String, dynamic>;
          final images = extraData['images'];
          return buildPageWithSlideTransition(
            EditImagesPage(
              images : images
            ),
            state
          );
        }
      ),
     
    ],
  );
}
