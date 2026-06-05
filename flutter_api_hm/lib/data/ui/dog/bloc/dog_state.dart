part of 'dog_bloc.dart';


sealed class DogState extends Equatable {
  const DogState();

  @override
  List<Object?> get props => [];
}

final class DogInitial  extends DogState{}

final class GettingDogsState extends DogState{}

final class ErrorDogsState extends DogState{}

final class GetDogsState extends DogState{
  const  GetDogsState({required this.listDog});

  final List<DogModel> listDog;

  @override
  List<Object> get props => [listDog];
}