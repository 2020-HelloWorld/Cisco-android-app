import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseServices {
  final _auth = FirebaseAuth.instance;
  final _database = FirebaseFirestore.instance;

  signUpWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return true;
    } on FirebaseException catch (error) {
      debugPrint(error.message);
      return error.message;
    }
  }

  signInWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return true;
    } on FirebaseException catch (error) {
      debugPrint(error.toString());
      return false;
    }
  }

  insertInitialData(String type, String email, String data) async {
    // "type" can be of two types: brand and influencer.
    // "data" will be username if type is influencer or brand name if type is brand.

    Map<String, dynamic> payload = {};

    if (type == "brand") {
      payload = {
        "type": type,
        "email": email,
        "brand_name": data,
      };
    } else if (type == "influencer") {
      payload = {
        "type": type,
        "email": email,
        "username": data,
      };
    } else {
      debugPrint("Unknown type: " + type);
      return false;
    }

    var user_collection = await _database
        .collection("users")
        .doc(_auth.currentUser?.uid)
        .set(payload);

    return true;
  }

  insertNextBrandDetails(
      String brandName, String gstNumber, String year, String about) async {
    Map<String, dynamic> payload = {
      "brand_name": brandName,
      "gst_number": gstNumber,
      "year": year,
      "about": about,
    };

    await _database
        .collection("users")
        .doc(_auth.currentUser?.uid)
        .update(payload);
  }

  insertNextInfluencerDetails(
      String name, String dob, String gender, String bio) async {
    Map<String, dynamic> payload = {
      "name": name,
      "dob": dob,
      "gender": gender,
      "bio": bio,
    };

    await _database
        .collection("users")
        .doc(_auth.currentUser?.uid)
        .update(payload);
  }
}
