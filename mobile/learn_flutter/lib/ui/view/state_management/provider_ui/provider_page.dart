import 'package:flutter/material.dart';
import 'package:learn_flutter/core/view_model/provider/counter_provider.dart';
import 'package:learn_flutter/ui/shared/shared.dart';
import 'package:provider/provider.dart';

class CounterProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: CounterProviderView(),
    );
  }
}

class CounterProviderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Contoh Provider'),
      ),
      body: Column(
        children: [
          Consumer<CounterProvider>(
            builder: (context, counter, _) => Center(
              child: Text(counter.counter.toString(),style: kTitleStyle))
          ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () => counter.increment(),
                child: CircleAvatar(
                  child: const Icon(Icons.add),
                ),
              ),
              InkWell(
                onTap: () => counter.decrement(),
                child: CircleAvatar(
                  child: const Icon(Icons.remove),
                ),
              )
            ],
          )
        ],
      ),
      // floatingActionButton: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: <Widget>[
      //     FloatingActionButton(
      //       // key: const Key('counterView_increment_floatingActionButton'),
      //       child: const Icon(Icons.add),
      //       onPressed: () => counter.increment,
      //     ),
      //     const SizedBox(height: 8),
      //     FloatingActionButton(
      //       // key: const Key('counterView_decrement_floatingActionButton'),
      //       child: const Icon(Icons.remove),
      //       onPressed: () => counter.decrement,
      //     ),
      //   ],
      // ),
    );
  }
}
