import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      width: size.width * 0.6,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 5,
            blurRadius: 20,
          ),
        ],
      ),
      child: SingleChildScrollView( // Tránh lỗi tràn nội dung
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, // Hạn chế mở rộng quá mức
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
              child: Image.asset(
                "assets/images/${hotel['image']}",
                height: AppLayout.getHeight(160),
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const Gap(10),
            Text(
              hotel['place'],
              style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
            ),
            const Gap(10),
            Text(
              hotel['hotel'],
              style: Styles.headLineStyle3.copyWith(color: Colors.white),
            ),
            const Gap(10),
            Text(
              'Rp. ${hotel['price']}/night',
              style: Styles.headLineStyle3.copyWith(color: Styles.kakiColor),
            ),
          ],
        ),
      ),
    );
  }
}
