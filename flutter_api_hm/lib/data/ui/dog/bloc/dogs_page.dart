import 'package:flutter/material.dart';
import 'package:flutter_api_hm/data/ui/dog/bloc/dog_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class DogsPage extends StatefulWidget {
  const DogsPage({super.key});
  @override
  State<DogsPage> createState() => _DogsPageState();
}

class _DogsPageState extends State<DogsPage>{
  final DogBloc _dogBloc  = DogBloc();

  @override
  void initState() {
    _dogBloc.add(GetDogsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DogBloc, DogState>(
        bloc: _dogBloc,
        builder: (context, state) {
          return ListView.builder(itemBuilder: (context, index) {
            if (state is GetDogsState) {
              return ListView.builder(
                itemCount: state.listDog.length,
                itemBuilder: (context, index) { 
                  final dog =   state.listDog[index];
                  return Column(
                    children: [
                      Image.network(dog.url),
                      SizedBox(height: 8),
                      Text(dog.id, style:  TextStyle(fontSize: 32),),
                      ],
                    );
                  },
                );
              }
            if (state is ErrorDogsState) {
              return Text('exseption', style: TextStyle(fontSize: 32, color: Colors.red),);
            }
            return Center(child: CircularProgressIndicator());
          });
        }
      )      
      
      
      // Center(
      //   child: BlocBuilder<DogBloc, DogState>(
      //     bloc: _dogBloc,
      //     builder: (context, state) {
      //       if (state is GetDogsState) {
      //         return Image.network(state.listDog);
      //       }

      //       if (state is ErrorDogsState) {
      //         return Center(child: Text("Flutter 04"));
      //       }

      //       return const Center(child: CircularProgressIndicator());
      //     },
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(onPressed: (){
      //   _loadImage();
      // }),
    );
  }
}