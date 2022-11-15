import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transaction_repository/transaction_repository.dart';

import '../../../../blocs/filter/filter_bloc.dart';
import '../../../../constants.dart';
import '../../../components/bars.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final _filterBloc = context.read<FilterBloc>();
    return Container(
      padding: const EdgeInsets.all(kMediumPadding),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResetFilter(filterBloc: _filterBloc),
          Text('Filter by', style: title3.copyWith(color: kDark100)),
          Wrap(
            spacing: 16,
            children: [
              FilterChip(
                filterBloc: _filterBloc,
                filter: ActiveFilter.expense,
                filterString: 'Expense',
              ),
              FilterChip(
                filterBloc: _filterBloc,
                filter: ActiveFilter.income,
                filterString: 'Income',
              ),
            ],
          ),
          Text('Sort by', style: title3.copyWith(color: kDark100)),
          Wrap(
            spacing: 16,
            children: [
              SortChip(
                filterBloc: _filterBloc,
                sort: ActiveSort.highest,
                sortString: 'Highest',
              ),
              SortChip(
                filterBloc: _filterBloc,
                sort: ActiveSort.lowest,
                sortString: 'Lowest',
              ),
              SortChip(
                filterBloc: _filterBloc,
                sort: ActiveSort.newest,
                sortString: 'Newest',
              ),
              SortChip(
                filterBloc: _filterBloc,
                sort: ActiveSort.oldest,
                sortString: 'Oldest',
              ),
            ],
          ),
          Text('Category', style: title3.copyWith(color: kDark100)),
          DefaultBar(
            title: Text(
              'Choose category',
              style: body1.copyWith(color: kDark50),
            ),
            trailing: Row(
              children: [
                Text(
                  '0 selected',
                  style: body3.copyWith(color: kDark25),
                ),
                Padding(
                  padding: const EdgeInsets.all(kMediumPadding),
                  child: Image.asset(
                    'assets/icons/arrow-right-2.png',
                    color: kViolet100,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          ElevatedButton(
            child: const Text('Apply'),
            onPressed: () {
              _filterBloc.add(const FilterSubmitted());
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

class ResetFilter extends StatelessWidget {
  const ResetFilter({
    super.key,
    required FilterBloc filterBloc,
  }) : _filterBloc = filterBloc;

  final FilterBloc _filterBloc;

  @override
  Widget build(BuildContext context) {
    return DefaultBar(
      title: const Text('Filter transaction', style: title3),
      trailing: Chip(
        backgroundColor: const Color(0xffF1F1FA),
        label: InkWell(
          onTap: () => _filterBloc.add(const FilterReseted()),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            child: Text(
              'Reset',
              style: body3.copyWith(color: kViolet100),
            ),
          ),
        ),
      ),
    );
  }
}

class SortChip extends StatelessWidget {
  const SortChip({
    super.key,
    required FilterBloc filterBloc,
    required ActiveSort sort,
    required String sortString,
  })  : _filterBloc = filterBloc,
        _sort = sort,
        _sortString = sortString;

  final FilterBloc _filterBloc;
  final ActiveSort _sort;
  final String _sortString;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterBloc, FilterState>(
      builder: (context, state) {
        if (state is FilterLoaded) {
          return InkWell(
            onTap: () => _filterBloc.add(SortChanged(_sort)),
            child: Chip(
              backgroundColor: state.activeSort == _sort ? kViolet40 : kLight40,
              label: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(_sortString),
              ),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}

class FilterChip extends StatelessWidget {
  const FilterChip({
    super.key,
    required FilterBloc filterBloc,
    required ActiveFilter filter,
    required String filterString,
  })  : _filterBloc = filterBloc,
        _filter = filter,
        _filterString = filterString;

  final FilterBloc _filterBloc;
  final ActiveFilter _filter;
  final String _filterString;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterBloc, FilterState>(
      builder: (context, state) {
        if (state is FilterLoaded) {
          return InkWell(
            onTap: () => _filterBloc.add(FilterChanged(_filter)),
            child: Chip(
              backgroundColor:
                  state.activeFilter == _filter ? kViolet40 : kLight40,
              label: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(_filterString),
              ),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
