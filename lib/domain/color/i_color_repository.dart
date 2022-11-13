import 'package:chuck_norris_joke/domain/core/failure_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

abstract class IColorRepository {
  Future<Either<FailureModel, Color?>> getColor();
  Future<Either<FailureModel, Unit>> saveColor(Color color);
}
