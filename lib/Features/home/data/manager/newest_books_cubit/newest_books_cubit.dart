import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failuer) {
      emit(NewestBooksFailuer(failuer.errMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
