class {{name.pascalCase()}}ViewInitialParams {
  const {{name.pascalCase()}}ViewInitialParams();

  factory {{name.pascalCase()}}ViewInitialParams.fromUri(Uri uri) =>
      const {{name.pascalCase()}}ViewInitialParams();

  factory {{name.pascalCase()}}ViewInitialParams.fromExtra(Object? extra) =>
      const {{name.pascalCase()}}ViewInitialParams();

  factory {{name.pascalCase()}}ViewInitialParams.fromQuery(
    Map<String, String> queryParameters,
  ) => const {{name.pascalCase()}}ViewInitialParams();
}
