import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(AssetsData.test),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
