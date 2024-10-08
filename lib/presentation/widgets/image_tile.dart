import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gapopa/utils/style/size_screen.dart';
import 'package:gapopa/utils/style/typography_text_style.dart';

import '../../domain/entities/image_entity/image_entity.dart';
import 'custom_shimmer.dart';

class ImageTile extends StatelessWidget {
  final ImageEntity image;
  final int index;

  const ImageTile({required this.image, required this.index});

  @override
  Widget build(BuildContext context) {
    // int randomNum = Random().nextInt(10);
    int sizeMultiplier = (index % 5 + 1) * 100;

    return Stack(
      children: [
        Image.network(
          image.webformatURL,
          scale: 1,
          width: SizeScreen.maxWidth(context),
          height: sizeMultiplier.toDouble(),
          fit: BoxFit.cover,
          errorBuilder: (context, exception, stackTrace) {
            return const SizedBox(
              child: Icon(Icons.image_not_supported_outlined),
            );
          },
          frameBuilder: (context, child, frame, sync) {
            if (frame == null) {
              return CustomShimmer(
                width: SizeScreen.maxWidth(context),
                height: sizeMultiplier.toDouble(),
              );
            }

            return child;
          },
          loadingBuilder: (
            context,
            child,
            loadingProgress,
          ) {
            if (loadingProgress == null) return child;
            return CustomShimmer(
              width: SizeScreen.maxWidth(context),
              height: sizeMultiplier.toDouble(),
            );
          },
        ),
        Positioned(
          left: 0.0,
          bottom: 0.0,
          right: 0.0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
            ),
            padding: const EdgeInsets.only(
              left: 8,
              bottom: 8,
              top: 8,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    const Icon(Icons.favorite, color: Colors.white, size: 14),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      image.likes.toString(),
                      style: TypographyTextStyle.bodyRegular3.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.comment_rounded,
                      color: Colors.white,
                      size: 14,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      image.comments.toString(),
                      style: TypographyTextStyle.bodyRegular3.copyWith(
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
    return GridTile(
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        title: Text('${image.likes} Likes'),
        subtitle: Text('${image.views} Views'),
      ),
      child: Image.network(
        image.previewURL,
        fit: BoxFit.cover,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        },
        errorBuilder: (context, exception, stackTrace) {
          return SizedBox(
            child: const Icon(Icons.image_not_supported_outlined),
          );
        },
      ),
    );
  }
}
