import 'package:flutter/material.dart';
import './catagory.dart';
import './unreadcontent.dart';

class UnreadContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Catagories> detail = [
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'gebeyehu assega',
          subtitle: 'selam new',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'gebeyehu assega',
          subtitle: 'selam new',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'gebeyehu assega',
          subtitle: 'selam new',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'gebeyehu assega',
          subtitle: 'selam new',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'gebeyehu assega',
          subtitle: 'selam new',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'gebeyehu assega',
          subtitle: 'selam new',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'gebeyehu assega',
          subtitle: 'selam new',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'gebeyehu assega',
          subtitle: 'selam new',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'gebeyehu assega',
          subtitle: 'selam new',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'gebeyehu assega',
          subtitle: 'selam new',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'gebeyehu assega',
          subtitle: 'selam new',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'gebeyehu assega',
          subtitle: 'selam new',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'gebeyehu assega',
          subtitle: 'selam new',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'gebeyehu assega',
          subtitle: 'selam new',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'gebeyehu assega',
          subtitle: 'selam new',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'gebeyehu assega',
          subtitle: 'selam new',
          num: '2'),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: detail.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Image.network(detail[index].image)),
            title: Text(detail[index].text),
            subtitle: Text(detail[index].subtitle),
            trailing: Text(detail[index].num),
          );
        },
      ),
    );
  }
}
