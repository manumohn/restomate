import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:restomate/core/constants/images.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key, required this.url}) : super(key: key);
  final String? url;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: SizedBox(
        height: 120,
        width: 120,
        child: _imageWidget(),
      ),
    );
  }

  Widget _imageWidget() {
    if (url != null) {
      return CachedNetworkImage(
        imageUrl: url!,
        fit: BoxFit.cover,
        placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      );
    } else {
      return Image.asset(ImageRes.dishPlaceHolder);
    }
  }
}
