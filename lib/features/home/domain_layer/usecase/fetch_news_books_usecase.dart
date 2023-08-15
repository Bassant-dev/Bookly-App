import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/book_entity.dart';
import '../repostries/home_repo.dart';

class FetchNewsBooksUseCase extends UseCase<List<BookEntity>,  NoParam> {
  final HomeRepo homeRepo;

  FetchNewsBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([ NoParam? param]) async {
    return await homeRepo.fetchNewsBooks();
  }
}