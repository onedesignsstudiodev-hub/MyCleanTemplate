import 'package:fpdart/fpdart.dart';
import 'package:{{app.snakeCase()}}/modules/app/domain/entitties/base_entity.dart';
import 'package:{{app.snakeCase()}}/data/model/{{module.snakeCase()}}/{{name.snakeCase()}}_json/{{name.snakeCase()}}_json.dart';
 import '../../repository/{{module.snakeCase()}}/{{name.snakeCase()}}_repo.dart';
import '../../entities/{{module.snakeCase()}}/{{name.snakeCase()}}_entity.dart';
import '../../failures/{{module.snakeCase()}}/{{name.snakeCase()}}_failure.dart';

class {{name.pascalCase()}}UseCase {
  final {{name.pascalCase()}}Repo repo;
  {{name.pascalCase()}}UseCase(this.repo);

  Future<Either<{{name.pascalCase()}}Failure, BaseEntity>> execute({{name.pascalCase()}}Entity data)  async => await repo.{{name.camelCase()}}(data).then((value) => value.fold(
              (err) => left({{name.pascalCase()}}Failure(error: err.error)),
              (response) => right(response)));
}


