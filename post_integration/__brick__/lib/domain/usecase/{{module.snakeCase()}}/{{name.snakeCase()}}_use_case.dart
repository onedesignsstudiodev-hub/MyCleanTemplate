import 'package:fpdart/fpdart.dart';
import 'package:{{app.snakeCase()}}/modules/app/domain/entitties/base_entity.dart';
import 'package:{{app.snakeCase()}}/data/model/{{module.snakeCase()}}/{{name.snakeCase()}}_json/{{name.snakeCase()}}_json.dart';
 import '../../repository/{{module.snakeCase()}}/{{name.snakeCase()}}_repo.dart';
import '../../entities/{{module.snakeCase()}}/{{name.snakeCase()}}_entity.dart';
import '../../failures/{{module.snakeCase()}}/{{name.snakeCase()}}_failure.dart';
import '../../validator/{{module.snakeCase()}}/{{name.snakeCase()}}_validator.dart';

class {{name.pascalCase()}}UseCase {
  final {{name.pascalCase()}}Repo repo;
  final {{name.pascalCase()}}Validator validator;
  {{name.pascalCase()}}UseCase(this.repo, this.validator);

  Future<Either<{{name.pascalCase()}}Failure, BaseEntity>> execute({{name.pascalCase()}}Entity data) async =>
      validator.validate(data).fold(
          (err) => left({{name.pascalCase()}}Failure(error: err.error)),
          (res) async => await repo.{{name.camelCase()}}(res).then((value) => value.fold(
              (err) => left({{name.pascalCase()}}Failure(error: err.error)),
              (response) => right(response))));
}


