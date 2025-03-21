import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:movie/core/common/resource/app_assets.dart';
import 'package:movie/features/add_card/bloc/add_card_bloc.dart';
import '../../../core/common/translations/l10n.dart';
import '../../../core/common/utils/expire_date_formatter.dart';
import '../../../core/common/widgets/custom_text_field.dart';

class ExpiryDateInput extends StatelessWidget {
  const ExpiryDateInput({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = GetIt.instance<AddCardBloc>();
    return BlocBuilder<AddCardBloc, AddCardState>(
      bloc: bloc,
      builder: (context, state) {
        return CustomTextField(
          label: S.of(context).tf_expiry_date,
          hintText: 'XX/XX',
          initValue: state.expDate,
          keyboardType: TextInputType.number,
          inputFormatters: [
            LengthLimitingTextInputFormatter(5),
            ExpireDateFormatter(separator: '/'),
          ],
          maxLength: 5,
          icRight: AppAssets.ic_calendar_svg,
          onChanged: (val) => bloc.add(AddCardEvent.onChangeExpDate(val)),
          actionRight: () {},
        );
      },
    );
  }
}
