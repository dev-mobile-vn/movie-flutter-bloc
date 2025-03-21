import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:movie/features/add_card/bloc/add_card_bloc.dart';
import '../../../core/common/translations/l10n.dart';
import '../../../core/common/widgets/custom_text_field.dart';

class CvvCardInput extends StatelessWidget {
  const CvvCardInput({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = GetIt.instance<AddCardBloc>();
    return BlocBuilder<AddCardBloc, AddCardState>(
      bloc: bloc,
      builder: (context, state) {
        return CustomTextField(
          label: S.of(context).tf_cvv,
          hintText: 'XXX',
          keyboardType: TextInputType.number,
          initValue: state.cvv,
          maxLength: 3,
          textInputAction: TextInputAction.done,
          onChanged: (val) => bloc.add(AddCardEvent.onChangeCvvCard(val)),
        );
      },
    );
  }
}
