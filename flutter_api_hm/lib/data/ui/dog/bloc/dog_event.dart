part of 'dog_bloc.dart';


sealed class DogEvent extends Equatable {
  const DogEvent();
}

final class GetDogsEvent extends DogEvent{
  @override

  List<Object?> get props => [];
}