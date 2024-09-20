import 'package:checkout_payment/Features/checkout/presentation/views/my_cart_view.dart';
import 'package:checkout_payment/core/utils/api_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {
  Stripe.publishableKey = ApiKeys.puplishablekey;
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}

//Stripe steps:
// 1.paymentIntentObject create payment intent (amount , currency)
// 2.init payment sheet ( paymentIntentClientSecret)
//3.presentPaymentSheet ()


