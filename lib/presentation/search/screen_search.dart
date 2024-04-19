

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/search_widgets/search_idle.dart';
import 'package:netflix/presentation/search/search_widgets/search_result.dart';


class screenSearch extends StatelessWidget {
  screenSearch({Key? key}) : super(key: key);

  final _debouncer = Debouncer(milliseconds: 1 * 1000);

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
                backgroundColor: Colors.grey.withOpacity(.25),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill,
                    color: Colors.grey),
                style: const TextStyle(color: Colors.white),
                onChanged: (value) {
                  if (value.isEmpty) {
                    return;
                  }
                  _debouncer.run(() {
                    
                  });
                }),
            kheight,
            Expanded(child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.searchResultList.isEmpty) {
                  return const searchIdleWidget();
                } else {
                  return const searchReasult();
                }
              },
            )),
            // Expanded(child: const searchReasult()) ,
          ],
        ),
      )),
    );
  }
}
