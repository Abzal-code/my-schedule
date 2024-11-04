abstract class UseCase<T, Params> {
  Future<T> call(Params params);
}

class Unit {
  const Unit();
}

class NoParams {
  const NoParams();
}
