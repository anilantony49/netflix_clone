import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kwidth = SizedBox(
  width: 20,
);
const kheight = SizedBox(
  height: 20,
);
const k25height = SizedBox(
  height: 25,
);
const k50height = SizedBox(
  height: 50,
);
final BorderRadius kRadius10 = BorderRadius.circular(10);
final BorderRadius kRadius30 = BorderRadius.circular(30);
// image
const imageUrls =
    "https://images.complex.com/complex/images/c_fill,dpr_auto,f_auto,q_auto,w_1400/fl_lossy,pg_1/wjnhpz3osrai5aningjl/titanic?fimg-client";

const imageappendUrl = "https://image.tmdb.org/t/p/w500";

//text Style
TextStyle khomeTextStle =
    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold);


kWidth(double width) => SizedBox(width: width);
kHeight(double height) => SizedBox(height: height);

const kTextStyleHome = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
);

final shimmerGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: <Color>[
    Colors.grey[900]!,
    Colors.grey[900]!,
    Colors.grey[800]!,
    Colors.grey[900]!,
    Colors.grey[900]!
  ],
  stops: const <double>[0.0, 0.35, 0.5, 0.65, 1.0],
);

