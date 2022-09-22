// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'page_cubit.dart';

class PageState {
  int page;
  PageState({
    required this.page,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'page': page,
    };
  }

  factory PageState.fromMap(Map<String, dynamic> map) {
    return PageState(
      page: map['page'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory PageState.fromJson(String source) =>
      PageState.fromMap(json.decode(source) as Map<String, dynamic>);
}
