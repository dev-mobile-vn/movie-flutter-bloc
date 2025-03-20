import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/core/common/enums/menu_type.dart';
import 'package:movie/core/common/resource/app_assets.dart';
import 'package:movie/core/common/utils/bottom_sheet_utils.dart';
import 'package:movie/features/profile/widgets/avatar_profile.dart';
import '../../../../core/common/widgets/svg_widget.dart';
import '../../../../di/dependency_injection.dart';
import 'bloc/profile_bloc.dart';
import 'widgets/menu_item.dart';
import 'widgets/subcribe_premium.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<ProfileBloc>();
    return BlocProvider<ProfileBloc>(
      create: (context) => bloc,
      child: Scaffold(
        appBar: AppBar(
          leading: const SvgWidget(ic: AppAssets.ic_logo_svg),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(bottom: 24),
          child: Column(
            children: [
              AvatarProfile(url: ""),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Flutter Dev',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.black, fontSize: 18),
              ),
              const SizedBox(
                height: 4,
              ),
              Text('flutter@gmail.com',
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(
                height: 24,
              ),
              const SubscribePremium(),
              const SizedBox(
                height: 4,
              ),
              ...MenuType.values.map(
                (item) => MenuItem(
                  title: item.name(context),
                  icLeft: item.ic,
                  action: () async {
                    if (item == MenuType.darkMode) {
                      bloc.add(ProfileEvent.onChangeDarkMode());
                    } else if (item == MenuType.logout) {
                      BottomSheetUtils.logout(context);
                    } else if (item == MenuType.language) {
                      final result = await Navigator.pushNamed(context, item.router);
                      if (result != null) {
                        bloc.add(ProfileEvent.onChangeLanguage(result as String));
                      }
                    } else {
                      Navigator.pushNamed(context, item.router);
                    }
                  },
                  type: item,
                  bloc: bloc,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
