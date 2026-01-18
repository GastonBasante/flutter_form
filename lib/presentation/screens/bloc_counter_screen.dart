import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/counter_bloc/counter_bloc.dart';

class BlocCounterScreen extends StatelessWidget {
  const BlocCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: const _BlocCounterView(),
    );
  }
}

class _BlocCounterView extends StatelessWidget {
  const _BlocCounterView();

  void increaseCounterBy(BuildContext context, [value = 1]) {
    context.read<CounterBloc>().add(CounterIncreased(value: value));
  }

  void resetCounter(BuildContext context) {
    context.read<CounterBloc>().add(CounterReseted());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.select((CounterBloc value) {
          return Text('bloc counter ${value.state.transactionCount}');
        }),
        actions: [
          IconButton(
            onPressed: () {
              resetCounter(context);
            },
            icon: Icon(Icons.refresh_outlined),
          ),
        ],
      ),
      body: Center(
        child: context.select((CounterBloc value) {
          return Text('Counter value: ${value.state.counter}');
        }),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          FloatingActionButton(
            heroTag: '1',
            onPressed: () {
              increaseCounterBy(context, 3);
            },
            child: Text('+3'),
          ),
          SizedBox(height: 15),
          FloatingActionButton(
            heroTag: '2',
            onPressed: () {
              increaseCounterBy(context, 2);
            },
            child: Text('+2'),
          ),
          SizedBox(height: 15),
          FloatingActionButton(
            heroTag: '3',
            onPressed: () {
              increaseCounterBy(context, 1);
            },
            child: Text('+1'),
          ),
        ],
      ),
    );
  }
}
