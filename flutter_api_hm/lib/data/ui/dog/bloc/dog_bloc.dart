import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_api_hm/data/model/api_service.dart';
import 'package:flutter_api_hm/data/model/dog_model.dart';

part 'dog_state.dart';  
part 'dog_event.dart';


class DogBloc extends Bloc<DogEvent, DogState> {
  final ApiService apiService = ApiService();

  DogBloc() : super(DogInitial()) {
    on<GetDogsEvent>((event, emit) async {
      try {
        emit(GettingDogsState());
        final dogs =  await apiService.getDogs();
        emit(GetDogsState(listDog: dogs));
      } catch (e, s){
        print(e);
        print(s);
        emit(ErrorDogsState());
      }
    });
  }
}