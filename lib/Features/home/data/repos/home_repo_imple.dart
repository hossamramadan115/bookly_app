import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failuer.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImple implements HomeRepo {
  ApiService apiService;
  HomeRepoImple(this.apiService);
  @override
  Future<Either<Failuer, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              ' volumes?Filtering=free-ebooks&Sorting=newest&q=supject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerError());
    }
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
// https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&Sorting=newest&q=supject:programming
