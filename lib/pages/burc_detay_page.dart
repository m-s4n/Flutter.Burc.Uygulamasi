import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import '../models/burc.dart';

class BurcDetayPage extends StatelessWidget {
  final Burc burc;
  const BurcDetayPage({required this.burc, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Icerik(burc: burc),
    );
  }
}

// widget
class _Icerik extends StatefulWidget {
  final Burc burc;
  const _Icerik({required this.burc});

  @override
  State<_Icerik> createState() => _IcerikState();
}

// state
class _IcerikState extends State<_Icerik> {
  Color appBarRenk = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => loadRenk(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          backgroundColor: appBarRenk,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text("${widget.burc.ad} Burcu ve Özellikleri"),
            background: Image.asset(
              "assets/images/${widget.burc.buyukResim}",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: Container(
          margin: const EdgeInsets.only(top: 20, bottom: 20),
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text(
            widget.burc.detay,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ))
      ],
    );
  }

  void loadRenk() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage("assets/images/${widget.burc.buyukResim}"));
    setState(() {
      appBarRenk = _generator.vibrantColor!.color;
    });
  }
}
