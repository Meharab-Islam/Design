import 'package:flutter/material.dart';

class MyAdsScreen extends StatefulWidget {
  const MyAdsScreen({ Key? key }) : super(key: key);

  @override
  State<MyAdsScreen> createState() => _MyAdsScreenState();
}

class _MyAdsScreenState extends State<MyAdsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('My Ads Screen'),
    );
  }
}