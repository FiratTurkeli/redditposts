import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reddit_posts/constans/color.dart';
import 'package:reddit_posts/models/post_model.dart';
import 'package:reddit_posts/services/services.dart';

import '../widgets/posts_container.dart';


class AllPosts extends StatefulWidget {
  const AllPosts({Key? key}) : super(key: key);

  @override
  State<AllPosts> createState() => _AllPostsState();
}

class _AllPostsState extends State<AllPosts> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
       centerTitle: true,
       title: SizedBox(
          width: 120,
          height: 52,
          child: Image.asset("assets/Reddit-Logo.png"),
        ),
      ),
      backgroundColor: primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
         FutureBuilder<PostModel>(
           future: PostService().getPostsApi(),
             builder: (context, snapshot){
             if (snapshot.hasData) {
               return Expanded(
                 child: ListView.builder(
                     itemCount: snapshot.data!.data.children.length,
                     itemBuilder:  (context, index){
                       return Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(12.0),
                             child: PostsContainer(
                               title: snapshot.data!.data.children[index].data.title.toString(),
                               thumbnail: snapshot.data!.data.children[index].data.thumbnail.toString(),
                               selfText: snapshot.data!.data.children[index].data.selftext.toString() ,),
                           )

                         ],
                       );
                     }
                 ),
               );
             }  else {
               return const Center(
                 child: CircularProgressIndicator(
                   color: secondary,
                   backgroundColor: white,
                 ),
               );
             }
             }
         )
       ],
      )
    );
  }
}
