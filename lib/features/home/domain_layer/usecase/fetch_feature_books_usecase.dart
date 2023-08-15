import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/book_entity.dart';
import '../repostries/home_repo.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>,  NoParam> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([ NoParam? param]) async {
    return await homeRepo.fetchFeatureBooks(

    );
  }
}
