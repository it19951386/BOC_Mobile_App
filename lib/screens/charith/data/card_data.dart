import 'package:flutter/material.dart';
import 'package:boc_mobile_app/screens/charith/constants/color_constant.dart';

class CardModel {
  String cardTitle;
  String cardSubTitle;
  String cardDate;

  CardModel(
      {required this.cardTitle,
      required this.cardSubTitle,
      required this.cardDate});
}

List<CardModel> myCards = [
  CardModel(
    cardTitle: 'Transfer Credit',
    cardSubTitle: 'This is card body',
    cardDate: '12/06/2021',
  ),
  CardModel(
      cardTitle: 'Request Account Status',
      cardSubTitle: 'This is card body',
      cardDate: '26/05/2021'),
];
