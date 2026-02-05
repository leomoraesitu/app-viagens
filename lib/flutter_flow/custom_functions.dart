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
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

dynamic getJsonValue(
  String jsonString,
  String keyName,
) {
  final Map<String, dynamic> parsed =
      json.decode(jsonString) as Map<String, dynamic>;
  return parsed[keyName];
}

LatLng? makeLatLng(
  double? lat,
  double? lng,
) {
  if (lat == null || lng == null) return null;
  return LatLng(lat, lng);
}
