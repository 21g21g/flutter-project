import 'package:flutter/material.dart';
import './catagory.dart';

class AllContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Catagories> detail = [
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'gebeyehu assega',
          subtitle: 'missa anbelam ',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'eyuel kassahun',
          subtitle: '6 ocklock yihun',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'habitamu fantahun',
          subtitle: 'enhid bakih',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'lhaileliaul',
          subtitle: 'class anhedim?',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'habitemariam yaregal',
          subtitle: 'eyehedih eskahun class lay neh',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'fanuel almaw',
          subtitle: 'enkuan aderesachu',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'gebirehiwot agumas',
          subtitle: 'abiro',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'eyosiyas aligas',
          subtitle: 'lachawtat ',
          num: '2'),
      Catagories(
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CbwDcWn1kGCGngSeafTlNJIlZwIbTipg60eo-_yAeA&s',
          text: 'dereje getahun',
          subtitle: 'achawtat',
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
            leading: Image.network(detail[index].image),
            title: Text(detail[index].text),
            subtitle: Text(detail[index].subtitle),
            trailing: Text(detail[index].num),
          );
        },
      ),
    );
  }
}
