import 'package:flutter/material.dart';

import '../shared/styles.dart';

class PayNowButton extends StatelessWidget {
  const PayNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(110, 80),
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(),
        ),
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => const PaymentReviewPage(),
          //   ),
          // );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // pull total from cartprovider
            Text('Pay \$0.00', style: poppinsFont20ptBoldWhite),
            Icon(
              Icons.keyboard_arrow_right,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
