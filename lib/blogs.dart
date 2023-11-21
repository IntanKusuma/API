import 'package:flutter/material.dart';
import 'package:latihanresponsi/Artikel.dart';
import 'package:latihanresponsi/BlogPage.dart';
import 'package:latihanresponsi/api_data_source.dart';
import 'package:latihanresponsi/blogs_model.dart';


class Blogs extends Artikel {
  const Blogs({super.key, required super.image, required super.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Users'),
      ),
      body: FutureBuilder(
        future: ApiDataSource.instance.loadUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('ADA ERROR');
          }
          if (snapshot.hasData) {
            BlogsModel blogs = BlogsModel.fromJson(snapshot.data!);
            return ListView.builder(
              itemCount: blogs.results!.length,
              itemBuilder: (context, index) {
                var blog = blogs.results![index];
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            BlogPage(blog: blog),
                      ),
                    );
                  },
                  leading: CircleAvatar(
                    foregroundImage: NetworkImage(blog.imageUrl!),
                  ),
                  title: Text('${blog.title}'),
                  subtitle: Text('${blog.newsSite}'),
                );
              },
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
