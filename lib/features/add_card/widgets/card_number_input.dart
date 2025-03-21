import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:movie/core/common/utils/card_number_formatter.dart';
import 'package:movie/features/add_card/bloc/add_card_bloc.dart';

import '../../../core/common/translations/l10n.dart';
import '../../../core/common/widgets/custom_text_field.dart';

class CardNumberInput extends StatelessWidget {
  const CardNumberInput({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = GetIt.instance<AddCardBloc>();
    return BlocBuilder<AddCardBloc, AddCardState>(
      bloc: bloc,
      builder: (context, state) {
        return CustomTextField(
          label: S.of(context).tf_card_number,
          hintText: 'XXXX XXXX XXXX XXXX',
          initValue: state.cardNumber,
          inputFormatters: [
            CardNumberFormatter(),
            LengthLimitingTextInputFormatter(19),
          ],
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.number,
          error: state.errCardNumber,
          onChanged: (val) => bloc.add(AddCardEvent.onChangeCardNumber(val)),
        );
      },
    );
  }
}
