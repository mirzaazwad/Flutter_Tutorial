import 'package:news/core/resources/data_state.dart';
import 'package:news/features/daily_news/domain/usecases/get_article.usecase.dart';
import 'package:news/features/daily_news/presentation/bloc/remote/remote_article.event.dart';
import 'package:news/features/daily_news/presentation/bloc/remote/remote_article.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RemoteArticlesBloc extends Bloc<RemoteArticlesEvent,RemoteArticleState>{

  final GetArticleUseCase _getArticleUseCase;

  RemoteArticlesBloc(this._getArticleUseCase):super(RemoteArticlesLoading()){
      on <GetArticles>(onGetArticles);
    }

    void onGetArticles(GetArticles event, Emitter<RemoteArticleState> emit) async{
      final dataState= await _getArticleUseCase();
      if(dataState is DataSuccess && dataState.data!.isNotEmpty) {
        emit(RemoteArticlesDone(articles: dataState.data!));
      }

      if(dataState is DataFailed){
        emit(RemoteArticlesError(exception: dataState.error!));
      }
    }
}