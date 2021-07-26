/// id : "string"
/// featured : false
/// title : "string"
/// url : "string"
/// imageUrl : "string"
/// newsSite : "string"
/// summary : "string"
/// publishedAt : "2020-08-04T10:00:00.000Z"
/// launches : [{"id":"string","provider":"string"}]
/// events : [{"id":"string","provider":"string"}]

class NewsModel {
  String? _id;
  bool? _featured;
  String? _title;
  String? _url;
  String? _imageUrl;
  String? _newsSite;
  String? _summary;
  String? _publishedAt;
  List<Launches>? _launches;
  List<Events>? _events;

  String? get id => _id;
  bool? get featured => _featured;
  String? get title => _title;
  String? get url => _url;
  String? get imageUrl => _imageUrl;
  String? get newsSite => _newsSite;
  String? get summary => _summary;
  String? get publishedAt => _publishedAt;
  List<Launches>? get launches => _launches;
  List<Events>? get events => _events;

  NewsModel({
    String? id,
    bool? featured,
    String? title,
    String? url,
    String? imageUrl,
    String? newsSite,
    String? summary,
    String? publishedAt,
    List<Launches>? launches,
    List<Events>? events}){
    _id = id;
    _featured = featured;
    _title = title;
    _url = url;
    _imageUrl = imageUrl;
    _newsSite = newsSite;
    _summary = summary;
    _publishedAt = publishedAt;
    _launches = launches;
    _events = events;
  }

  NewsModel.fromJson(dynamic json) {
    _id = json["id"];
    _featured = json["featured"];
    _title = json["title"];
    _url = json["url"];
    _imageUrl = json["imageUrl"];
    _newsSite = json["newsSite"];
    _summary = json["summary"];
    _publishedAt = json["publishedAt"];
    if (json["launches"] != null) {
      _launches = [];
      json["launches"].forEach((v) {
        _launches?.add(Launches.fromJson(v));
      });
    }
    if (json["events"] != null) {
      _events = [];
      json["events"].forEach((v) {
        _events?.add(Events.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["featured"] = _featured;
    map["title"] = _title;
    map["url"] = _url;
    map["imageUrl"] = _imageUrl;
    map["newsSite"] = _newsSite;
    map["summary"] = _summary;
    map["publishedAt"] = _publishedAt;
    if (_launches != null) {
      map["launches"] = _launches?.map((v) => v.toJson()).toList();
    }
    if (_events != null) {
      map["events"] = _events?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : "string"
/// provider : "string"

class Events {
  String? _id;
  String? _provider;

  String? get id => _id;
  String? get provider => _provider;

  Events({
    String? id,
    String? provider}){
    _id = id;
    _provider = provider;
  }

  Events.fromJson(dynamic json) {
    _id = json["id"];
    _provider = json["provider"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["provider"] = _provider;
    return map;
  }

}

/// id : "string"
/// provider : "string"

class Launches {
  String? _id;
  String? _provider;

  String? get id => _id;
  String? get provider => _provider;

  Launches({
    String? id,
    String? provider}){
    _id = id;
    _provider = provider;
  }

  Launches.fromJson(dynamic json) {
    _id = json["id"];
    _provider = json["provider"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["provider"] = _provider;
    return map;
  }

}