import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:newsappassignment/view/model/NewsModel.dart';
import 'package:newsappassignment/view/data/NewsRepo.dart';

part 'event/news_event.dart';

part 'state/news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsRepo newsRepo;

  NewsBloc(this.newsRepo) : super(NewsInitial());

  @override
  Stream<NewsState> mapEventToState(
    NewsEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is MyFetchNews) {
      try {
        List<NewsModel> news = await newsRepo.getNewsMy();
        yield NewsIsLoaded(news);
        close();
      } catch (_) {
        print(_);
        yield NewsIsNotLoaded();
      }
    }
  }

  @override
  Future<void> close() async {
    return super.close();
  }


}
