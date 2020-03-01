class Headline {
  int id;
  String title;
  String subtitle;
  int articleId;
  String createdAt;
  String updatedAt;
  Avatar avatar;

  Headline(
      {this.id,
        this.title,
        this.subtitle,
        this.articleId,
        this.createdAt,
        this.updatedAt,
        this.avatar});

  Headline.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    subtitle = json['subtitle'];
    articleId = json['article_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    avatar =
    json['avatar'] != null ? new Avatar.fromJson(json['avatar']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['article_id'] = this.articleId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.avatar != null) {
      data['avatar'] = this.avatar.toJson();
    }
    return data;
  }
}

class Avatar {
  int id;
  String name;
  String hash;
  String sha256;
  String ext;
  String mime;
  double size;
  String url;
  String provider;
  Null providerMetadata;
  String createdAt;
  String updatedAt;

  Avatar(
      {this.id,
        this.name,
        this.hash,
        this.sha256,
        this.ext,
        this.mime,
        this.size,
        this.url,
        this.provider,
        this.providerMetadata,
        this.createdAt,
        this.updatedAt});

  Avatar.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    hash = json['hash'];
    sha256 = json['sha256'];
    ext = json['ext'];
    mime = json['mime'];
    size = json['size'];
    url = json['url'];
    provider = json['provider'];
    providerMetadata = json['provider_metadata'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['hash'] = this.hash;
    data['sha256'] = this.sha256;
    data['ext'] = this.ext;
    data['mime'] = this.mime;
    data['size'] = this.size;
    data['url'] = this.url;
    data['provider'] = this.provider;
    data['provider_metadata'] = this.providerMetadata;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
