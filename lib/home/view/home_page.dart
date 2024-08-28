import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:log/home/cubit/home_cubit.dart';
import 'package:log/l10n/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      // appBar: AppBar(title: Text(l10n.counterAppBarTitle)),
      body: const Center(child: HomeText()),
      // floatingActionButton: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: [
      //     FloatingActionButton(
      //       onPressed: () => context.read<HomeCubit>().increment(),
      //       child: const Icon(Icons.add),
      //     ),
      //     const SizedBox(height: 8),
      //     FloatingActionButton(
      //       onPressed: () => context.read<HomeCubit>().decrement(),
      //       child: const Icon(Icons.remove),
      //     ),
      //   ],
      // ),
    );
  }
}

class HomeText extends StatelessWidget {
  const HomeText({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    // final count = context.select((HomeCubit cubit) => cubit.state);
    return Text(l10n.flutterPagla, style: theme.textTheme.displayLarge);
  }
}
