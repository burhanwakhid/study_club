import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/core/view_model/bloc/cubit/counter_cubit.dart';
import 'package:learn_flutter/ui/shared/shared.dart';

class CounterBlocPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: CounterBlocView(),
    );
  }
}

class CounterBlocView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contoh Bloc'),
      ),
      body: Column(
        children: [
          Center(
            child: BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                return Text('$state', style: kTitleStyle,);
              },
            ),
          ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () => context.bloc<CounterCubit>().increment(),
                child: CircleAvatar(
                  child: const Icon(Icons.add),
                ),
              ),
              InkWell(
                onTap: () => context.bloc<CounterCubit>().decrement(),
                child: CircleAvatar(
                  child: const Icon(Icons.remove),
                ),
              )
            ],
          ),
        ],
      ),
      // floatingActionButton: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: <Widget>[
      //     FloatingActionButton(
      //       // key: const Key('counterView_increment_floatingActionButton'),
      //       child: const Icon(Icons.add),
      //       onPressed: () => context.bloc<CounterCubit>().increment(),
      //     ),
      //     const SizedBox(height: 8),
      //     FloatingActionButton(
      //       // key: const Key('counterView_decrement_floatingActionButton'),
      //       child: const Icon(Icons.remove),
      //       onPressed: () => context.bloc<CounterCubit>().decrement(),
      //     ),
      //   ],
      // ),
    );
  }
}
