part of 'internet_cubit.dart';

@immutable
sealed class InternetState {}

final class InternetConnect extends InternetState {}
final class InternetDisConnect extends InternetState {}
