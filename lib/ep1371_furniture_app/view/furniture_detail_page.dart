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
  int _count = 1;

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
                        .toList()),
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                      // enableDrag: true,
                      isDismissible: false,
                      isScrollControlled: true,
                      builder: (context) {
                        return Container(
                          height: MediaQuery.of(context).size.height / 1.3,
                          decoration: BoxDecoration(),
                          padding: EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Container(
                                height: 4,
                                width: 32,
                                decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(16)),
                              ),
                              Text("Details"),
                              Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "),
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      ExpansionTile(
                                        title: Center(
                                          child: Column(
                                            children: [
                                              Text("materials"),
                                            ],
                                          ),
                                        ),
                                        children: [
                                          Container(
                                            height: 120,
                                            color: Colors.black,
                                            child: Row(),
                                          ),

                                          Container(
                                            margin: EdgeInsets.only(top: 16),
                                            height: 120,
                                            color: Colors.black,
                                            child: Row(),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  child: const Text(
                    "Details",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 24,
                ),
                height: 120,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(200, 192, 254, 1),
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Quantity"),
                        const Text("Total"),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(145, 129, 243, 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                _count--;
                                if (_count <= 1) _count = 1;
                              });
                            },
                            icon: const Icon(Icons.remove),
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Text(
                            "${_count}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                            ),
                          ),
                        ),
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                _count++;
                                if (_count >= 10) _count = 10;
                              });
                            },
                            icon: const Icon(Icons.add),
                            color: Colors.black,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "\$${widget.furnitureItem.price}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        )
                      ],
                    )
                  ],
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
