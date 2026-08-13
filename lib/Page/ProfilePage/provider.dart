import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'
    show Notifier, NotifierProvider, Ref;
import 'package:instagram_clone/Page/HomePage/HomePage.dart';

class ProfileNotifer extends Notifier<Map<String, String>> {
  @override
  Map<String, String> build() {
    return {
      ///intially wht display on screen
      'Name': "Heyyyyyyy",
      'UserName': "Heyy_061",
      'Bio': "Helloo",
      'Gender': "He/Him",
    };
  }

  void updateProfile({
    required String name1,
    required  String userName1,
     required  String bio1
  }){

    
    state = {'Name': name1, 'UserName': userName1, 'Bio': bio1};
  }
}

final profileProvider = NotifierProvider<ProfileNotifer, Map<String, String>>(
  ProfileNotifer.new,
);
