import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:movie/core/bloc/page_command.dart';
import 'package:movie/core/common/constant/routers.dart';
import 'package:movie/core/common/widgets/custom_button.dart';
import 'package:movie/core/common/widgets/svg_widget.dart';
import 'package:movie/core/data/model/payment.dart';
import 'package:movie/features/payments/bloc/payments_bloc.dart';
import 'package:movie/features/payments/widgets/button_continue.dart';
import '../../../core/common/translations/l10n.dart';
import '../../confirm_payment/confirm_payment_screen.dart';

class PaymentsView extends StatelessWidget {
  final ConfirmPaymentArg arg;
  const PaymentsView({super.key, required this.arg});

  @override
  Widget build(BuildContext context) {
    final bloc = GetIt.instance<PaymentsBloc>();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              S.of(context).txt_select_payment_method,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Expanded(child: BlocBuilder<PaymentsBloc, PaymentsState>(
            buildWhen: (previous, current) =>
                previous.payments != current.payments,
            bloc: bloc..add(PaymentsEvent.initData(arg)),
            builder: (context, state) {
              return ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  itemCount: state.payments.length,
                  itemBuilder: (context, index) {
                    Payment item = state.payments[index];
                    if (item.methodName == 'Add New Card') {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 20),
                        child: CustomButton(
                          bg: Color(0xffFCE7E9),
                          textColor: Theme.of(context).colorScheme.primary,
                          btnText: S.of(context).btn_add_new_card,
                          action: () {
                            bloc.add(
                              PaymentsEvent.onNavigate(
                                context,
                                PageCommandNavigatorPage(page: addCardRoute),
                              ),
                            );
                          },
                        ),
                      );
                    }
                    return ListTile(
                      title: Row(
                        children: [
                          SvgWidget(ic: item.ic),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(item.methodName),
                          ),
                        ],
                      ),
                      trailing: BlocBuilder<PaymentsBloc, PaymentsState>(
                        bloc: bloc,
                        builder: (context, state) {
                          return Radio(
                            value: state.payment != null &&
                                state.payment!.methodName == item.methodName,
                            onChanged: (val) {
                              bloc.add(PaymentsEvent.onSelectedMethod(item));
                            },
                            groupValue: true,
                          );
                        },
                      ),
                    );
                  });
            },
          ))
        ],
      ),
      bottomNavigationBar: ButtonContinue(bloc: bloc),
    );
  }
}
