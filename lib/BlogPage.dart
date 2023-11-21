import 'package:flutter/material.dart';
import 'package:latihanresponsi/blogs_model.dart';

class BlogPage extends StatelessWidget {
  final Results blog; // Menerima objek User untuk ditampilkan

  BlogPage({required this.blog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Detail'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage('${blog.imageUrl}'),
              ),
              SizedBox(height: 20,),
              Text('ID: ${blog.id}', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text(
                'Name: ${blog.title}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Text(
                'Email: ${blog.newsSite}',
                style: TextStyle(fontSize: 18),
              ),
              // Tambahkan detail lainnya sesuai kebutuhan dari objek User
            ],
          ),
        ),
      ),
    );
  }
}
