import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:netflix/core/widgets/texts.dart';
import 'package:netflix/model/item.dart';
import 'package:netflix/view/Details/buttons.dart';
import 'package:netflix/view/Details/details_bottom.dart';
import 'package:netflix/view/Details/genres.dart';
import 'package:netflix/view/Details/thumbnail.dart';

class Details extends StatelessWidget {
  const Details({super.key, required this.show});

  final Item show;

  @override
  Widget build(BuildContext context) {
    log("${show.genres.length}");
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Close button
              closeButton(context),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  thumbnail(show.imageUrl),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      Quicksand(text: show.title, size: 24),
                      genres(show.genres),
                      SizedBox(height: 20),
                      play,
                      SizedBox(height: 5),
                      myList,
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),

              DetailsBottom(show: show),
            ],
          ),
        ),
      ),
    );
  }
}
