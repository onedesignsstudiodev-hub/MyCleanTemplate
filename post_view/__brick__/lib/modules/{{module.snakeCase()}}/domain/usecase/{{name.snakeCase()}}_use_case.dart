import 'package:fpdart/fpdart.dart';
import 'package:{{app.snakeCase()}}/modules/app/domain/entitties/base_entity.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/entities/{{name.snakeCase()}}_entity.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/failures/{{name.snakeCase()}}_failure.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/params/{{name.snakeCase()}}_param.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/domain/repository/{{name.snakeCase()}}_repo.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/presentation/validator/{{name.snakeCase()}}_validator.dart';

class {{name.pascalCase()}}UseCase {
  final {{name.pascalCase()}}Validator validator;
  final {{name.pascalCase()}}Repo repo;

  {{name.pascalCase()}}UseCase(this.validator, this.repo);

  Future<
      Either<
          {{name.pascalCase()}}Failure,
          BaseEntity<{{name.pascalCase()}}Entity>>> execute(
    {{name.pascalCase()}}Param data,
  ) async {
    return validator
        .validate(data)
        .fold(
          (l) => left({{name.pascalCase()}}Failure(error: l.error)),
          (r) async => await repo.{{name.camelCase()}}(data).then(
          (value) => value.fold(
            (err) => left(
              {{name.pascalCase()}}Failure(error: err.error),
            ),
            (response) => right(response),
          )),
        );
  }
}


