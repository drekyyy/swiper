import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'dart:convert';

part 'page_state.dart';

class PageCubit extends HydratedCubit<PageState> {
  PageCubit() : super(PageState(page: 9999));

  void _increment() => emit(PageState(page: state.page + 1));
  void _decrement() => emit(PageState(page: state.page - 1));

  void changePage(int page) {
    if (state.page > page) {
      _decrement();
    } else if (state.page < page) {
      _increment();
    }
  }

  @override
  PageState? fromJson(Map<String, dynamic> json) {
    return PageState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(PageState state) {
    return state.toMap();
  }
}
