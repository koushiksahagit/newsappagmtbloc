part of '../news_bloc.dart';

abstract class NewsEvent extends Equatable {
  const NewsEvent();
}

class MyFetchNews extends NewsEvent{

  @override
  // TODO: implement props
  List<Object> get props => [];
}