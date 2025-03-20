import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:movie/core/cubit/app_cubit.dart';
import 'core/common/constant/routers.dart';
import 'core/common/resource/theme.dart';
import 'core/common/translations/l10n.dart';
import 'core/common/widgets/custom_error_widget.dart';
import 'core/config/app_config.dart';
import 'core/config/app_routes.dart';
import 'di/dependency_injection.dart';
import 'features/home/bloc/home_cubit.dart';
import 'features/profile/bloc/profile_bloc.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  await appConfig();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => getIt.get<AppCubit>()
              ..getLocale()
              ..getDarkMode(),
          ),
          BlocProvider<HomeCubit>.value(value: getIt<HomeCubit>()),
          BlocProvider(create: (_) => getIt.get<ProfileBloc>()),
        ],
        child: BlocBuilder<AppCubit, AppState>(
          buildWhen: (previous, current) => previous != current,
          builder: (context, state) {
            return SafeArea(
              child: MaterialApp(
                navigatorKey: navigatorKey,
                initialRoute: splashRoute,
                onGenerateRoute: AppRouters().generateRoute,
                title: 'Movie',
                debugShowCheckedModeBanner: false,
                theme: themeData(context, state.isDarkMode),
                builder: (context, child) {
                  ErrorWidget.builder = (errorDetails) {
                    return const CustomErrorWidget();
                  };
                  return child!;
                },
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                locale: state.locale,
                supportedLocales: const [
                  Locale("vi"),
                  Locale("en"),
                ],
              ),
            );
          },
        ));
  }
}
