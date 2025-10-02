
import 'package:app_tl_land_3212/core/navigation/app_navigations.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/pages/add_description_page.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/pages/add_images_page.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/pages/add_owner_page.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/pages/edit_images_page.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/pages/edit_owner_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PostRouters {
  PostRouters._();

  static final GoRoute routers = GoRoute(
    path: '/post',
    pageBuilder:
        (context, state) => buildPageWithSlideTransition(SizedBox(), state),
    routes: [
      GoRoute(
        path: 'add-owner',
        pageBuilder: (context, state) {
          return buildPageWithSlideTransition(
            AddOwnerPage(),
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
            EditOwnerPage(
              item: item
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
            AddDescriptionPage(
              controller: controller,
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
          return buildPageWithSlideTransition(
            AddImagesPage(
              realEstateEntity: realEstateEntity
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
