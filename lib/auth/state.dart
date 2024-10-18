import 'package:app_news/models/artical_model.dart';

abstract class AppState {}

class InitialState extends AppState {}

class LoadingState extends AppState {}

class LoadedState extends AppState {
  final List<ArticalModel> articles;

  LoadedState({required this.articles});
}

class ErrorState extends AppState {
  final String error;
  ErrorState({required this.error});
}
