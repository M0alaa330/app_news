import 'package:app_news/models/artical_model.dart';

abstract class AppState {}

class InitialState extends AppState {}

class LoadingState extends AppState {}

class LoadedState extends AppState {
  List<ArticalModel>? articles;

  LoadedState(this.articles);
}

class ErrorState extends AppState {
  String? error;
  ErrorState(this.error);
}
