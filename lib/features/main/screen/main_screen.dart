import 'package:movie/di/dependency_injection.dart';
import 'package:movie/features/main/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/common/resource/icons.dart';
import '../../../core/common/translations/l10n.dart';
import '../../../core/common/widgets/svg_widget.dart';
import '../../download/download_screen.dart';
import '../../explore/presentation/explore_screen.dart';
import '../../home/home_screen.dart';
import '../../my_list/my_list_screen.dart';
import '../../profile/profile_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainBloc>(
      create: (context) => getIt<MainBloc>(),
      child: BlocConsumer<MainBloc, MainState>(builder: (cts, state) {
        return Scaffold(
          body: PageView(
            controller: state.pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              HomeScreen(),
              ExploreScreen(),
              MyListScreen(),
              DownloadScreen(),
              ProfileScreen(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: const SvgWidget(ic: kTabHome),
                label: S.of(context).tab_home,
                activeIcon: const SvgWidget(ic: kTabSelectedHome),
              ),
              BottomNavigationBarItem(
                icon: const SvgWidget(ic: kTabExplore),
                label: S.of(context).tab_explore,
                activeIcon: const SvgWidget(ic: kTabSelectedExplore),
              ),
              BottomNavigationBarItem(
                  icon: const SvgWidget(ic: kTabMyList),
                  label: S.of(context).tab_my_list,
                  activeIcon: const SvgWidget(ic: kTabSelectedMyList)),
              BottomNavigationBarItem(
                  icon: const SvgWidget(ic: kTabDownload),
                  label: S.of(context).tab_download,
                  activeIcon: const SvgWidget(ic: kTabSelectedDownload)),
              BottomNavigationBarItem(
                  icon: const SvgWidget(ic: kTabProfile),
                  label: S.of(context).tab_profile,
                  activeIcon: const SvgWidget(ic: kTabSelectedProfile)),
            ],
            currentIndex: state.index,
            onTap: (index) {
              getIt.get<MainBloc>().add(MainEvent.onChangePage(index));
            },
          ),
        );
      }, listener: (ctx, state) {
        state.pageController.jumpToPage(state.index);
      }),
    );
  }
}
