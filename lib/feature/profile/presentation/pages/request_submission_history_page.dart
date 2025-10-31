import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_appbar_sub.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/profile_module.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/widget/request_submission_history/my_real_estate_list.dart';
import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequestSubmissionHistoryPage extends StatefulWidget {
  const RequestSubmissionHistoryPage({super.key});

  @override
  State<RequestSubmissionHistoryPage> createState() =>
      _RequestSubmissionHistoryPageState();
}

class _RequestSubmissionHistoryPageState
    extends State<RequestSubmissionHistoryPage> {
  late final PaginatorBloc<RealEstateEntity, ApprovalStatus>
      _myRealEstatePaginatorBloc;
  late final MyRealEstateBloc _myRealEstateBloc;
  late final ScrollController _scrollController;
  final int _limit = 5;

  @override
  void initState() {
    super.initState();
    _myRealEstatePaginatorBloc =
        sl<PaginatorBloc<RealEstateEntity, ApprovalStatus>>();
    _myRealEstateBloc = sl<MyRealEstateBloc>();
    _loadInitialData(_myRealEstateBloc.state.selectedStatus);

    _scrollController = ScrollController()
      ..addListener(() {
        if (_scrollController.position.pixels >=
                _scrollController.position.maxScrollExtent &&
            !_myRealEstatePaginatorBloc.state.isLastPage) {
          _loadMoreData();
        }
      });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onLoadMoreWhenNotScrollable() {
    if (!_scrollController.hasClients ||
        _scrollController.position.maxScrollExtent > 0) {
      return;
    }

    if (_scrollController.position.pixels == 0 &&
        !_myRealEstatePaginatorBloc.state.isLoadMore &&
        !_myRealEstatePaginatorBloc.state.isLoading &&
        !_myRealEstatePaginatorBloc.state.isLastPage) {
      _loadMoreData();
    }
  }

  void _loadInitialData(ApprovalStatus status) {
    _myRealEstatePaginatorBloc
        .add(LoadInitial<RealEstateEntity, ApprovalStatus>(
      usecase: sl<GetMyRealEstatesUsecase>(),
      limit: _limit,
      param: status,
    ));
  }

  void _loadMoreData() {
    _myRealEstatePaginatorBloc.add(LoadMore<RealEstateEntity, ApprovalStatus>(
      usecase:
          sl<Usecase<List<RealEstateEntity>, PaginatorParam<ApprovalStatus>>>(),
      limit: _limit,
      param: _myRealEstateBloc.state.selectedStatus,
    ));
  }

  void _onTabChanged(int index) {
    final newStatus = ApprovalStatus.values[index];
    _myRealEstateBloc.add(MyRealEstateEvent.statusChanged(newStatus));
    _loadInitialData(newStatus);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _myRealEstatePaginatorBloc),
        BlocProvider.value(value: _myRealEstateBloc),
      ],
      child: Scaffold(
        backgroundColor: BasicColors.gray50,
        appBar: CustomAppbarSub(
          titleLeading: "Bất động sản của tôi",
        ),
        body: SafeArea(
          minimum: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0),
          child: Column(spacing: 16.h, children: [
            // TODO: Tabbar
            BlocBuilder<MyRealEstateBloc, MyRealEstateState>(
              builder: (context, state) {
                return RequestStatusTabs(
                  selectedIndex: state.selectedStatus.index,
                  onChanged: _onTabChanged,
                );
              },
            ),
            // TODO: List real estate
            Expanded(
              child: BlocConsumer<
                  PaginatorBloc<RealEstateEntity, ApprovalStatus>,
                  PaginatorState<RealEstateEntity>>(
                listener: (context, state) {
                  final dialogObserver = sl<DialogObserverBloc>();

                  if (state.failure?.type != null &&
                      !dialogObserver.state.isDialogOpen) {
                    DisplayError.handle(
                      context: context,
                      errerrType: state.failure!.type,
                      apiMessage: state.failure!.err,
                    );
                  }
                  if (state.isLoaded) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (mounted) _onLoadMoreWhenNotScrollable();
                    });
                  }
                },
                builder: (context, state) {
                  return RefreshIndicator.adaptive(
                      onRefresh: () async {
                        _loadInitialData(
                            _myRealEstateBloc.state.selectedStatus);
                      },
                      child: _buildBody(state));
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget _buildBody(PaginatorState<RealEstateEntity> state) {
    if (state.isLoading && state.items.isEmpty) {
      // return const Center(child: CircularProgressIndicator());
      return const CardShimmer();
    }
    if (state.isLoaded && state.items.isEmpty) {
      return InfoEmpty(
        text: 'bất động sản',
      );
    }
    return MyRealEstateList(
      realEstatesList: state.items,
      scrollController: _scrollController,
      isLoadMore: state.isLoadMore,
    );
  }
}
