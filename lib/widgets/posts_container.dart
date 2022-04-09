import 'package:flutter/material.dart';

import '../constans/color.dart';

class PostsContainer extends StatelessWidget {
  final String? title;
  final String? thumbnail;
  final String? selfText;
  const PostsContainer({Key? key, this.title, this.selfText, this.thumbnail,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: const Icon(Icons.comment_bank),
            trailing: Column(
              children: const [
                Icon(Icons.keyboard_arrow_up_outlined),
                Icon(Icons.keyboard_arrow_down_outlined),
              ],
            ),
            title: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(title!, style: const TextStyle(fontWeight: FontWeight.bold, color: secondary),),
                ),
                thumbnail != 'self' && thumbnail != 'default' ?
                SizedBox(
                    width: 170,
                    height: 150,
                    child: Image.network(thumbnail!, fit: BoxFit.cover,))
                    :const SizedBox.shrink(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: Text(selfText!),
                  ),
                ),
              ],
            ),

          )
        ],
      ),
    );
  }
}
