import 'package:flutter/material.dart';
import 'package:movie/core/common/enums/category_type.dart';

import '../../../../../di/dependency_injection.dart';
import '../bloc/my_list_bloc.dart';

class Categories extends StatelessWidget {
  final CategoryType categoryType;
  const Categories({
    super.key,
    required this.categoryType,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: CategoryType.values
            .map((item) => GestureDetector(
                  onTap: () => getIt<MyListBloc>()
                      .add(MyListEvent.selectedCategory(item)),
                  child: Container(
                    margin: EdgeInsets.only(right: 16),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                        color: categoryType == item
                            ? Theme.of(context).colorScheme.primary
                            : Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        border: Border.all(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1,
                        )),
                    child: Text(
                      item.getCategoryName(),
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: categoryType == item
                                ? Colors.white
                                : Colors.black,
                          ),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
