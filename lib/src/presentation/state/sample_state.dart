import 'package:binder/binder.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_boilerplate/src/core/exceptions/request_exception.dart';
import 'package:flutter_boilerplate/src/data/models/sample_model.dart';

final StateRef<Either<SampleModel?, RequestException>> sampleStateRef = StateRef(const Left(null));
