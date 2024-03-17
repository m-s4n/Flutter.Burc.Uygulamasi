import 'package:app_burc/models/burc.dart';
import 'package:flutter/material.dart';
import 'package:app_burc/data/strings.dart';
import 'package:app_burc/pages/burc_item.dart';

class BurcListePage extends StatelessWidget {
  const BurcListePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Burçlar"),
      ),
      body: _Icerik(),
    );
  }
}

class _Icerik extends StatelessWidget {
  late final List<Burc> burclar;
  _Icerik() {
    burclar = getBurclar();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return BurcItem(burc: burclar[index]);
        },
        itemCount: burclar.length,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }

  List<Burc> getBurclar() {
    List<Burc> burclar = [];

    for (int i = 0; i < 12; i++) {
      Burc burc = Burc(
        Strings.burcAdlari[i],
        Strings.burcTarihleri[i],
        Strings.burcGenelOzellikleri[i],
        "${Strings.burcAdlari[i].toLowerCase()}${i + 1}.png",
        "${Strings.burcAdlari[i].toLowerCase()}_buyuk${i + 1}.png",
      );

      burclar.add(burc);
    }
    return burclar;
  }
}
