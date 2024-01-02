import 'package:flutter/material.dart';

import 'package:bitstate/app/models/filter_model.dart';

class Filters extends StatelessWidget {
  final List<FilterModel> filters;

  const Filters({
    Key? key,
    required this.filters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(filters.length, (index) {
            FilterModel filter = filters[index];

            return Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: index == 0
                    ? BorderRadius.circular(10)
                    : index != filters.length - 1
                        ? BorderRadius.circular(0)
                        : const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                color: index == 0 ? const Color(0xffF3A612) : null,
                border: Border(
                  right: index == filters.length - 1
                      ? const BorderSide(color: Color(0xffF3A612), width: 2)
                      : BorderSide.none,
                  top: const BorderSide(color: Color(0xffF3A612), width: 2),
                  bottom: const BorderSide(color: Color(0xffF3A612), width: 2),
                ),
              ),
              child: Center(
                child: Text(
                  filter.text,
                  style: TextStyle(
                    color: index == 0 ? Colors.white : const Color(0xffF3A612),
                    fontSize: 20,
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
