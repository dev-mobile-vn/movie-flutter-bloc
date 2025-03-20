import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/core/common/resource/app_assets.dart';
import 'package:movie/core/common/widgets/custom_button.dart';
import 'package:movie/di/dependency_injection.dart';
import '../../core/bloc/page_command.dart';
import '../../core/common/constant/routers.dart';
import '../../core/common/translations/l10n.dart';
import 'bloc/well_come_bloc.dart';

class WellComeScreen extends StatelessWidget {
  static String routeName = '/';
  const WellComeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WellComeBloc>(
      create: (context) => getIt<WellComeBloc>(),
      child: Scaffold(
        body: SafeArea(
          top: false,
          bottom: false,
          child: BlocListener<WellComeBloc, WellComeState>(
            listener: (context, state) {
              if (state.cmd is PageCommandNavigatorPage) {
                final pageCmd = state.cmd as PageCommandNavigatorPage;
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  pageCmd.page!,
                  (route) => false,
                );
              }
            },
            child: BlocBuilder<WellComeBloc, WellComeState>(
              builder: (context, state) {
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    PageView(
                      onPageChanged: (index) => context
                          .read<WellComeBloc>()
                          .add(WellComeEvent.onPageView(index)),
                      children: [
                        Image.asset(
                          AppAssets.bg_welcome_png,
                          fit: BoxFit.fitWidth,
                        ),
                        Image.asset(
                          AppAssets.bg_welcome_png,
                          fit: BoxFit.fitWidth,
                        ),
                        Image.asset(
                          AppAssets.bg_welcome_png,
                          fit: BoxFit.fitWidth,
                        )
                      ],
                    ),
                    Positioned(
                      bottom: 24,
                      left: 0,
                      right: 0,
                      child: Column(
                        children: [
                          Text(
                            S.of(context).title_welcome_to_movie,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.white, fontSize: 18),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Text(
                              S.of(context).des_wellcome_movie,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(color: Colors.white, fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                              mainAxisSize: MainAxisSize.min,
                              children: List.generate(3, (index) {
                                bool selected = state.position == index;
                                return Container(
                                  margin: selected
                                      ? const EdgeInsets.only(left: 8, right: 8)
                                      : null,
                                  width: selected ? 32 : 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: selected ? Colors.red : Colors.white,
                                  ),
                                );
                              })),
                          Padding(
                            padding: const EdgeInsets.all(24),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                minimumSize: Size(double.infinity, 52),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                  side: BorderSide(color: Colors.white),
                                ),
                              ),
                              onPressed: () => context
                                  .read<WellComeBloc>()
                                  .add(WellComeEvent.onNavigate(mainRoute)),
                              child: Text(S.of(context).btn_get_started),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 24,
                              right: 24,
                            ),
                            child: CustomButton(
                              btnText: S.current.txt_sign_in,
                              action: () => context
                                  .read<WellComeBloc>()
                                  .add(WellComeEvent.onNavigate(loginRoute)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
