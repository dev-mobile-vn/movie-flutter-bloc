import 'package:flutter/material.dart';
import 'package:movie/core/common/constant/routers.dart';
import '../../../core/common/translations/l10n.dart';
import '../../../core/common/widgets/item_subscribe.dart';
import '../../../core/cubit/app_cubit.dart';
import '../../../di/dependency_injection.dart';
import '../../confirm_payment/confirm_payment_screen.dart';

class SubscribeView extends StatelessWidget {
  const SubscribeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              S.of(context).title_subscribe_to_premium,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 8),
              child: Text(
                S.of(context).content_subscribe_to_premium,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: getIt<AppCubit>().state.isDarkMode
                        ? Colors.white
                        : Color(0xff424242)),
              ),
            ),
            ItemSubscribe(
              price: '9.99',
              time: S.of(context).txt_month,
              onPressed: () => Navigator.pushNamed(
                context,
                paymentsRoute,
                arguments: ConfirmPaymentArg(price: '9.99', time: 'month'),
              ),
            ),
            ItemSubscribe(
              price: '99.99',
              time: S.of(context).txt_year,
              onPressed: () => Navigator.pushNamed(
                context,
                paymentsRoute,
                arguments: ConfirmPaymentArg(price: '99.99', time: 'year'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
