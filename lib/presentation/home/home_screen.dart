import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gapopa/domain/entities/image_entity/image_entity.dart';
import 'package:gapopa/presentation/controller/home/home_controller.dart';
import 'package:get/get.dart';

import '../../utils/style/custom_color.dart';
import '../widgets/image_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = SearchController();

  @override
  Widget build(BuildContext context) {
    searchBar() {
      return AppBar(
        toolbarHeight: 80,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: CustomColor.yellowColor,
          ),
        ),
        title: TextFormField(
          controller: searchController,
          onEditingComplete: () {
            Get.find<HomeController>().setKeyword(searchController.text);
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          onFieldSubmitted: (value) {
            Get.find<HomeController>().setKeyword(value);
          },
          decoration: InputDecoration(
            hintText: "Search..",
            focusColor: Colors.white,
            filled: true,
            fillColor: Colors.white,
            prefixIcon: IconButton(
                onPressed: () {
                  Get.find<HomeController>().setKeyword(searchController.text);
                },
                icon: Icon(Icons.search, color: Colors.black)),
            suffixIcon: IconButton(
                onPressed: () {
                  searchController.clear();
                  FocusScope.of(context).requestFocus(new FocusNode());
                  Get.find<HomeController>().loadImages();
                },
                icon: Icon(Icons.close)),
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 0.001, color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(width: 0.5, color: Colors.grey.shade200),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: searchBar(),
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return NotificationListener<ScrollNotification>(
            onNotification: (scrollInfo) {
              if (scrollInfo.metrics.pixels ==
                      scrollInfo.metrics.maxScrollExtent &&
                  !controller.isLoading) {
                controller.loadImages();
              }
              return true;
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MasonryGridView.count(
                itemCount: controller.images.length,
                crossAxisCount: adaptiveView(),
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                itemBuilder: (BuildContext context, int index) {
                  return ImageTile(
                    image: controller.images[index],
                    index: index,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }

  int adaptiveView() {
    switch (MediaQuery.of(context).size.width) {
      case > 600 && < 1024:
        return 4;
      case >= 1024:
        return 6;
      default:
        return 2;
    }
  }
}
