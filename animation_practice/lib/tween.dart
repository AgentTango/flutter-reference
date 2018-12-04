abstract class Tween<T> {
  final T begin;
  final T end;

  Tween(this.begin, this.end);

  T lerp(double t);
}