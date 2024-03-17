import 'package:app_burc/pages/burc_detay_page.dart';
import 'package:flutter/material.dart';
import 'package:app_burc/models/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc burc;
  const BurcItem({required this.burc, super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textStyle = Theme.of(context).textTheme;
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListTile(
          leading: Image.asset(
            'assets/images/${burc.kucukResim}',
            fit: BoxFit.fill,
          ),
          title: Text(
            burc.ad,
            style: textStyle.bodyMedium,
          ),
          subtitle: Text(
            burc.tarih,
            style: textStyle.bodySmall,
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.pink,
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BurcDetayPage(burc: burc),
                ));
          },
        ),
      ),
    );
  }
}
