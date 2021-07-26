part of '../news_bloc.dart';

abstract class NewsState extends Equatable {
  const NewsState();
}

class NewsInitial extends NewsState {
  @override
  List<Object> get props => [];
}

class NewsIsLoading extends NewsState{
  @override
  List<Object> get props => [];

}

class NewsIsLoaded extends NewsState{

  List<NewsModel> getNews;

  NewsIsLoaded(this.getNews);

  @override
  // TODO: implement props
  List<Object> get props => [getNews];
}

class NewsIsNotLoaded extends NewsState{
  @override
  List<Object> get props => [];

}