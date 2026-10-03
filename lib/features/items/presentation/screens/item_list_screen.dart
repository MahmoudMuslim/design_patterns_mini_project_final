import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection_container.dart';
import '../cubit/item_cubit.dart';
import '../cubit/item_state.dart';
import '../widgets/item_card_widget.dart';

/// Screen displaying the list of items fetched via Clean Architecture + BLoC.
class ItemListScreen extends StatelessWidget {
  const ItemListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ItemCubit>()..fetchItems(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Clean Architecture - Items'),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        body: BlocBuilder<ItemCubit, ItemState>(
          builder: (context, state) {
            if (state is ItemInitial || state is ItemLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ItemLoaded) {
              if (state.items.isEmpty) {
                return const Center(child: Text('No items found.'));
              }
              return ListView.builder(
                itemCount: state.items.length,
                itemBuilder: (context, index) {
                  return ItemCardWidget(item: state.items[index]);
                },
              );
            } else if (state is ItemError) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Error: ${state.message}',
                    style: const TextStyle(color: Colors.red, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }
            return const SizedBox.shrink();
          },
        ),
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            onPressed: () {
              context.read<ItemCubit>().fetchItems();
            },
            backgroundColor: Colors.deepPurple,
            child: const Icon(Icons.refresh, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
