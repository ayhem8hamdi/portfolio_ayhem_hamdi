import 'package:flutter/material.dart';

class ExperienceModel {
  final String image, expTitle, expDesc, expDate;
  final Color color;

  const ExperienceModel({
    required this.image,
    required this.expTitle,
    required this.expDesc,
    required this.color,
    required this.expDate,
  });
}
