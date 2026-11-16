import 'package:fpdart/fpdart.dart';
import 'package:{{app.snakeCase()}}/core/network/api_header.dart';
import 'package:{{app.snakeCase()}}/data/model/{{module.snakeCase()}}/{{name.snakeCase()}}_json/{{name.snakeCase()}}_json.dart';
import 'package:{{app.snakeCase()}}/core/network/network_handler.dart';
import 'package:{{app.snakeCase()}}/core/constant/app_url.dart';
import 'package:{{app.snakeCase()}}/core/failures/repo_failure.dart';
import '../../../domain/repository/{{module.snakeCase()}}/{{name.snakeCase()}}_repo.dart';
import 'package:{{app.snakeCase()}}/modules/app/domain/entitties/base_entity.dart';
import 'package:{{app.snakeCase()}}/modules/app/data/models/base_json.dart';
import '../../../domain/entities/{{module.snakeCase()}}/{{name.snakeCase()}}_entity.dart';


class {{name.pascalCase()}}RestApiRepo implements {{name.pascalCase()}}Repo {
  final NetworkHandler network;
  final AppUrl appUrl;
  {{name.pascalCase()}}RestApiRepo(this.network,this.appUrl);
  @override

  Future<Either<RepoFailure, BaseEntity>> {{name.camelCase()}}({{name.pascalCase()}}Entity data) =>
      network
            .post(
            appUrl.{{name.camelCase()}}Url,
            data.toJson().$2,
            Header.bearerHeaderWithApplicationJson(
                data.toJson().$1),
          )
          .then((value) =>
              value.fold((l) => left(RepoFailure(error: l.error)), (response) {
                 try {
                  return  right(BaseJson.fromJson(response, (_) => null).toDomain((data) => null));
                } catch (e) {
                  return left(RepoFailure(error: e.toString()));
                }
              }));
}


