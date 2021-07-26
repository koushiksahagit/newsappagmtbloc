import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsappassignment/view/screens/BlockListner.dart';
import 'package:newsappassignment/view/data/NewsRepo.dart';
import 'package:newsappassignment/bloc/news_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsBloc(NewsRepo())..add(MyFetchNews()),
      child: BlockListener(),
    );
  }
}
