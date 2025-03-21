import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/core/common/resource/app_assets.dart';
import 'package:movie/features/add_card/bloc/add_card_bloc.dart';
import '../../core/common/resource/icons.dart';
import '../../core/common/translations/l10n.dart';
import '../../core/common/widgets/custom_app_bar.dart';
import '../../core/common/widgets/custom_button.dart';
import '../../core/common/widgets/svg_widget.dart';
import '../../di/dependency_injection.dart';
import 'widgets/card_name_input.dart';
import 'widgets/card_number_input.dart';
import 'widgets/cvv_card_input.dart';
import 'widgets/expiry_date_input.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<AddCardBloc>();
    return BlocProvider<AddCardBloc>(
      create: (context) => bloc,
      child: BlocListener<AddCardBloc, AddCardState>(
        listener: (context, state) {},
        child: BlocBuilder<AddCardBloc, AddCardState>(
          bloc: bloc,
          builder: (context, state) {
            return Scaffold(
              appBar: CustomAppBar(
                title: S.of(context).title_add_new_card,
                actionRight: [
                  IconButton(
                      onPressed: () {},
                      icon: SvgWidget(
                        ic: icScannerCard,
                        width: 24,
                        height: 24,
                      ))
                ],
              ),
              body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                padding:
                    EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 32),
                child: Column(
                  spacing: 20,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          AppAssets.ic_card_account_png,
                          width: double.infinity,
                          height: 224,
                        ),
                        Divider(),
                      ],
                    ),
                    CardNameInput(),
                    CardNumberInput(),
                    Row(
                      spacing: 8,
                      children: [
                        Expanded(child: ExpiryDateInput()),
                        Expanded(child: CvvCardInput()),
                      ],
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: CustomButton(
                  enable: state.isSaved,
                  btnText: S.of(context).btn_add,
                  action: () {},
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
