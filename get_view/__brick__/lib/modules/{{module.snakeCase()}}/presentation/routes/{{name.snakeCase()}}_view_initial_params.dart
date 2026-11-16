class {{name.pascalCase()}}ViewInitialParams {
  const {{name.pascalCase()}}ViewInitialParams();

  factory {{name.pascalCase()}}ViewInitialParams.fromUri(Uri uri) {
    return {{name.pascalCase()}}ViewInitialParams(
      // Parse the URI parameters as needed
    );
  }

  factory {{name.pascalCase()}}ViewInitialParams.fromExtra(Object? extra) {
    return {{name.pascalCase()}}ViewInitialParams(
      // Parse the extra data as needed
    );
  }

  factory {{name.pascalCase()}}ViewInitialParams.fromQuery(
    Map<String, String> queryParameters,
  ) {
    return {{name.pascalCase()}}ViewInitialParams(
      // Parse the query parameters as needed
    );
  }
}
