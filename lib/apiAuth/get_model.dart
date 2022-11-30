
import 'dart:convert';

GetModel uniFromJson(String str) => GetModel.fromJson(json.decode(str));

String uniToJson(GetModel data) => json.encode(data.toJson());

class GetModel {
  String? country;
  List<String>? domains;
  List<String>? webPages;
  String? alphaTwoCode;
  String? name;
  Null? stateProvince;

  GetModel(
      {this.country,
      this.domains,
      this.webPages,
      this.alphaTwoCode,
      this.name,
      this.stateProvince});

  GetModel.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    domains = json['domains'].cast<String>();
    webPages = json['web_pages'].cast<String>();
    alphaTwoCode = json['alpha_two_code'];
    name = json['name'];
    stateProvince = json['state-province'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country'] = this.country;
    data['domains'] = this.domains;
    data['web_pages'] = this.webPages;
    data['alpha_two_code'] = this.alphaTwoCode;
    data['name'] = this.name;
    data['state-province'] = this.stateProvince;
    return data;
  }
}