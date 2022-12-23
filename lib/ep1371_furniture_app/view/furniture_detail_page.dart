import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_24/ep1371_furniture_app/model/furniture_item.dart';

class FurnitureDetailPage extends StatefulWidget {
  final FurnitureItem furnitureItem;

  const FurnitureDetailPage({
    Key? key,
    required this.furnitureItem,
  }) : super(key: key);

  @override
  State<FurnitureDetailPage> createState() => _FurnitureDetailPageState();
}

class _FurnitureDetailPageState extends State<FurnitureDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: Colors.black,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
              ),
              color: Colors.red,
              iconSize: 32,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: Column(
            children: [
              Container(
                height: 320,
                color: Colors.blue,
                child: Image.network(
                  widget.furnitureItem.img,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                widget.furnitureItem.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Stock: ${widget.furnitureItem.stock}",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: widget.furnitureItem.colors
                        .map(
                          (e) => Container(
                            height: 42,
                            width: 42,
                            margin: const EdgeInsets.only(left: 8, right: 8),
                            decoration: BoxDecoration(
                                color: e,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        )
                        .toList()
                    // [
                    //   Container(
                    //     height: 42,
                    //     width: 42,
                    //     decoration: BoxDecoration(
                    //         color: Colors.white,
                    //         border: Border.all(color: Colors.grey),
                    //         borderRadius: BorderRadius.circular(8)),
                    //   ),
                    //   Container(
                    //     margin: const EdgeInsets.symmetric(
                    //       horizontal: 16,
                    //     ),
                    //     height: 42,
                    //     width: 42,
                    //     decoration: BoxDecoration(
                    //         color: Colors.green,
                    //         border: Border.all(color: Colors.grey),
                    //         borderRadius: BorderRadius.circular(8)),
                    //   ),
                    //   Container(
                    //     height: 42,
                    //     width: 42,
                    //     decoration: BoxDecoration(
                    //         color: Colors.orange,
                    //         border: Border.all(color: Colors.grey),
                    //         borderRadius: BorderRadius.circular(8)),
                    //   )
                    // ],
                    ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                child: const Text("Details"),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 16,
                ),
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.purple[200],
                ),
              ),
              Container(
                height: 54,
                decoration: const ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.black,
                ),
                child: const Center(
                  child: Text(
                    "Add to Chart",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
