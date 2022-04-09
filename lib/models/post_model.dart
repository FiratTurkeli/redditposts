class PostModel {
  PostModel({
    required this.kind,
    required this.data,
  });
  late final String kind;
  late final Data data;

  PostModel.fromJson(Map<String, dynamic> json){
    kind = json['kind'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['kind'] = kind;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    this.after,
    required this.dist,
    required this.modhash,
    required this.geoFilter,
    required this.children,
    this.before,
  });
  late final Null after;
  late final int dist;
  late final String modhash;
  late final String geoFilter;
  late final List<Children> children;
  late final Null before;

  Data.fromJson(Map<String, dynamic> json){
    after = null;
    dist = json['dist'];
    modhash = json['modhash'];
    geoFilter = json['geo_filter'];
    children = List.from(json['children']).map((e)=>Children.fromJson(e)).toList();
    before = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['after'] = after;
    _data['dist'] = dist;
    _data['modhash'] = modhash;
    _data['geo_filter'] = geoFilter;
    _data['children'] = children.map((e)=>e.toJson()).toList();
    _data['before'] = before;
    return _data;
  }
}

class Children {
  Children({
    required this.kind,
    required this.data,
  });
  late final String kind;
  late final Data1 data;

  Children.fromJson(Map<String, dynamic> json){
    kind = json['kind'];
    data = Data1.fromJson(json["data"]);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['kind'] = kind;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data1{
  Data1({
    required this.title,
    required this.thumbnail,
    required this.allAwardings,
    required this.selftext

  });
  late final String title;
  late final String thumbnail;
  late final String selftext;
  late final List<AllAwardings> allAwardings;


  Data1.fromJson(Map<String, dynamic> json){
    title = json['title'];
    thumbnail = json['thumbnail'];
    allAwardings = List.from(json['all_awardings']).map((e)=>AllAwardings.fromJson(e)).toList();
    selftext = json['selftext'];



  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['thumbnail'] = thumbnail;
    _data['all_awardings'] = allAwardings.map((e)=>e.toJson()).toList();
    _data["selftext"] = selftext;


    return _data;
  }
}

class AllAwardings {
  AllAwardings({
    required this.description,
  });
  late final String description;

  AllAwardings.fromJson(Map<String, dynamic> json){
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['description'] = description;
    return _data;
  }
}
