import 'package:bloc_demo/features/home/ui/bloc/home_bloc.dart';
import 'package:bloc_demo/features/home/ui/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Column(
        children: [
          BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
            if (state is LoadingState) {
              return const CircularProgressIndicator();
            }
            return Text('hello data');
          })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
