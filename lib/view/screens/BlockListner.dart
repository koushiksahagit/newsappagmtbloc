import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsappassignment/view/screens/BlockStreamViewUI.dart';
import 'package:newsappassignment/bloc/news_bloc.dart';

class BlockListener extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final newsBloc = BlocProvider.of<NewsBloc>(context);
    return BlocBuilder<NewsBloc, NewsState>(
      builder: (context, state) {
        if (state is NewsInitial) {
          return Center(child: CircularProgressIndicator());
        } else if (state is NewsIsLoaded) {
          newsBloc.add(MyFetchNews());
          return BlockStreamViewUI(state.getNews, context);
        } else
          return Center(child: CircularProgressIndicator());
      },
    );
  }
}
