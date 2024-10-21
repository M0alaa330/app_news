import 'package:app_news/apis/api_services.dart';
import 'package:app_news/auth/state.dart';
import 'package:app_news/models/artical_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Newscubit extends Cubit<AppState> {
  Newscubit() : super(InitialState());
  ApiServices apiServices = ApiServices();

  getnews({required String category}) async {
    List<ArticalModel>? articles;
    emit(LoadingState());
    try {
      articles = await apiServices.getdata(category: category);
      emit(LoadedState(articles));
      print(articles.length);
    } catch (e) {
      print('Error fetching news: $e');
      // TODO
      emit(ErrorState(e.toString()));
    }
  }
}
