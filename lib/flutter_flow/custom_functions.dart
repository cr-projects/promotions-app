import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/firebase_auth/auth_util.dart';

List<PromotionViewRow> sortPromotionViewList(
  int sortColumIndex,
  bool isAsc,
  List<PromotionViewRow> listToSort,
) {
  switch (sortColumIndex) {
    case 0:
      listToSort.sort((a, b) => a.id!.compareTo(b.id!));
      break;
    case 1:
      listToSort.sort((a, b) => a.name!.compareTo(b.name!));
      break;
    case 2:
      listToSort.sort((a, b) => a.brandName!.compareTo(b.brandName!));
      break;
    default:
      break;
  }
  if (!isAsc) {
    listToSort = listToSort.reversed.toList();
  }
  return listToSort;
}

List<PromotionViewRow> searchPromoViewList(
  List<PromotionViewRow> searchList,
  String textField,
) {
  {
    // Filter the list based on the filterText
    List<PromotionViewRow> filteredList = searchList.where((newgroup) {
      return newgroup.name!.toLowerCase().contains(textField.toLowerCase());
    }).toList();

    return filteredList;
  }
}

List<PromotionViewRow> selRowsPromotionView(
  List<int> selectedBox,
  List<PromotionViewRow> theTable,
) {
  List<PromotionViewRow> newcontent = [];
  for (int i = 0; i < selectedBox.length; i++) {
    int index = selectedBox[i];
    if (index >= 0 && index < theTable.length) {
      PromotionViewRow emp = theTable[index];
      newcontent.add(emp);
    }
  }
  return newcontent;
}

bool? insertPaymentMedia(List<int> list) {
  final supabaseClient = Supabase.instance.client;
  // Iterate over the values array and insert each value into the Supabase table
  list.forEach((value) {
    // Insert logic here to insert the value into the Supabase table
    try {
      supabaseClient.from('rel_promotion_payment_media').insert(
          {'promotion_id': 1, 'payment_media': value, 'active': true}).select();
    } catch (ex) {
      print('An error occurred: $ex');
    }
  });

  // Return a message indicating the operation is complete
  return true;
}
