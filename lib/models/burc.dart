class Burc {
  final String _ad;
  final String _tarih;
  final String _detay;
  final String _kucukResim;
  final String _buyukResim;

  Burc(this._ad, this._tarih, this._detay, this._kucukResim, this._buyukResim);

  get ad => _ad;
  get tarih => _tarih;
  get detay => _detay;
  get kucukResim => _kucukResim;
  get buyukResim => _buyukResim;

  @override
  String toString() {
    return '$_ad - $_tarih - $_kucukResim - $_buyukResim';
  }
}
