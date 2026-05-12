import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_bloc.dart';

void main() {
  runApp(const CounterBlocApp());
}

class CounterBlocApp extends StatelessWidget {
  const CounterBlocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: MaterialApp(
        title: 'Bloc Counter',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
          useMaterial3: true,
        ),
        home: const FirstCounterScreen(),
      ),
    );
  }
}

class FirstCounterScreen extends StatelessWidget {
  const FirstCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CounterScaffold(
      title: 'First Screen',
      bodyTitle: 'Shared Counter',
      bodySubtitle: 'Change this value here, then open the second screen.',
      action: FilledButton.icon(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (_) => const SecondCounterScreen(),
            ),
          );
        },
        icon: const Icon(Icons.arrow_forward),
        label: const Text('Second Screen'),
      ),
    );
  }
}

class SecondCounterScreen extends StatelessWidget {
  const SecondCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CounterScaffold(
      title: 'Second Screen',
      bodyTitle: 'Same Counter',
      bodySubtitle:
          'Increment or decrement here, then go back to see it there.',
      action: OutlinedButton.icon(
        onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(Icons.arrow_back),
        label: const Text('Back'),
      ),
    );
  }
}

class CounterScaffold extends StatelessWidget {
  const CounterScaffold({
    required this.title,
    required this.bodyTitle,
    required this.bodySubtitle,
    required this.action,
    super.key,
  });

  final String title;
  final String bodyTitle;
  final String bodySubtitle;
  final Widget action;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    bodyTitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    bodySubtitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 32),
                  BlocBuilder<CounterBloc, int>(
                    builder: (context, count) {
                      return Text(
                        '$count',
                        key: const ValueKey('counter-value'),
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.displayLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      );
                    },
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton.filledTonal(
                        tooltip: 'Decrease',
                        onPressed: () {
                          context.read<CounterBloc>().add(
                            const CounterDecremented(),
                          );
                        },
                        icon: const Icon(Icons.remove),
                      ),
                      const SizedBox(width: 16),
                      IconButton.filled(
                        tooltip: 'Increase',
                        onPressed: () {
                          context.read<CounterBloc>().add(
                            const CounterIncremented(),
                          );
                        },
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Align(alignment: Alignment.center, child: action),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
