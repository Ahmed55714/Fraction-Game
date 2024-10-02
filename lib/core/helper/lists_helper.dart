import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListsHelper {
  /// Sets up a scroll listener on the provided [scrollController].
  /// [loadMoreData] is called when the user reaches the bottom of the scrollable content.
  static void setupScrollListener({
    required ScrollController scrollController,
    required VoidCallback loadMoreData,
  }) {
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        loadMoreData();
      }
    });
  }

  /// Checks if the user is currently scrolling up.
  static bool isScrollingUp({
    required ScrollController scrollController,
  }) {
    return scrollController.position.userScrollDirection ==
        ScrollDirection.forward;
  }

  
}
