import 'dart:convert';
import 'package:flutter/material.dart';
import 'article.dart';

@immutable
class Headline {
  final String? status;
  final int? totalResults;
  final List<Article>? articles;

  const Headline({this.status, this.totalResults, this.articles});

  factory Headline.fromMap(Map<String, dynamic> data) => Headline(
        status: data['status'] as String?,
        totalResults: data['totalResults'] as int?,
        articles: (data['articles'] as List<dynamic>?)
            ?.map((e) => Article.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'status': status,
        'totalResults': totalResults,
        'articles': articles?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Headline].
  factory Headline.fromJson(String data) {
    return Headline.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Headline] to a JSON string.
  String toJson() => json.encode(toMap());
}
