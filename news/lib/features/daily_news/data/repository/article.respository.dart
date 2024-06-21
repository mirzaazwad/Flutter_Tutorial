import 'dart:io';

import 'package:news/core/constants/constants.dart';
import 'package:news/core/resources/data_state.dart';
import 'package:news/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:news/features/daily_news/data/models/article.model.dart';
import 'package:news/features/daily_news/domain/repository/article.respository.dart';
import 'package:dio/dio.dart';

class ArticleRepositoryImpl implements ArticleRepository{

  final NewsAPIService newsApiService;

  ArticleRepositoryImpl(this.newsApiService);

  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() async{
    try{
      final httpResponse = await newsApiService.getNewsArticles(
        apiKey:apiKey,
        country: country,
        category: category,
      );

      if(httpResponse.response.statusCode == HttpStatus.ok){
        return DataSuccess(httpResponse.data);
      }
      else{
        return DataFailed(DioException(
          requestOptions: httpResponse.response.requestOptions,
          response: httpResponse.response,
          error: httpResponse.response.statusMessage,
          type: DioExceptionType.badResponse,
        ));
      }
    }
    on DioException catch(e){
      return DataFailed(e);
    }
  }

}