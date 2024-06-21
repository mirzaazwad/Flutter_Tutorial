import 'package:news/core/resources/data_state.dart';
import 'package:news/features/daily_news/domain/entities/article.entities.dart';

abstract class ArticleRepository{
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
  
}