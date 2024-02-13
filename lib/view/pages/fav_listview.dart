import 'package:flutter/material.dart';

class FavorateMovielist extends StatelessWidget {
  const FavorateMovielist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Favorite Movies'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: ListView.separated(
          itemCount: 12,
          separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
          itemBuilder: (context, index) => Container(
                width: 120,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.black38,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        height: double.infinity,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Text(
                                'title',
                                style: TextStyle(fontSize: 25),
                              ),
                              SizedBox(
                                width: 170,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.delete,
                                    size: 30,
                                  ))
                            ],
                          ),
                          Text('relesed date'),
                          Text(
                            'overview',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('language'),
                          Text(''),
                        ],
                      ),
                    )
                  ],
                ),
              )),
    );
  }
}
