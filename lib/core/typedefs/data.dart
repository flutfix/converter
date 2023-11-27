import 'package:converter/core/failures/failure.dart';
import 'package:dartz/dartz.dart';

typedef Data<T> = Future<Either<Failure, T>>;
typedef SyncData<T> = Either<Failure, T>;
