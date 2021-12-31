
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


Widget cachedNetworkImage(String image){
  return CachedNetworkImage(
    imageUrl: image,
    fit:BoxFit.cover,
    // placeholder: (context,url)=>Padding(
    //     child: CircularProgressIndicator(),
    //     padding: EdgeInsets.all(20.0)),
    // errorWidget: (context,url,error)=>Icon(Icons.error),
  );
}