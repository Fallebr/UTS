class Item {
  int _id;
  String _kodeBarang;
  String _name;
  int _price;
  int _stokBarang;

  get id => this._id;

  get kodeBarang => this._kodeBarang;
  set kodeBarang(value) => this._kodeBarang = value;

  get name => this._name;
  set name(value) => this._name = value;

  get price => this._price;
  set price(value) => this._price = value;

  get stokBarang => this._stokBarang;
  set stokBarang(value) => this._stokBarang = value;

  // konstruktor versi 1
  Item(this._kodeBarang, this._name, this._price, this._stokBarang);

  // konstruktor versi 2: konversi dari Map ke Item
  Item.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._kodeBarang = map['kodeBarang'];
    this._name = map['name'];
    this._price = map['price'];
    this._stokBarang = map['stokBarang'];
  }

  // konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['kodeBarang'] = kodeBarang;
    map['name'] = name;
    map['price'] = price;
    map['stokBarang'] = stokBarang;
    return map;
  }
}
