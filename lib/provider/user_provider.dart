import 'package:flutter/material.dart';
import 'package:sampleuser/helper/navigation.dart';
import 'package:sampleuser/helper/utils.dart';
import 'package:sampleuser/model/user_model.dart';
import 'package:sampleuser/repo/user_repo.dart';

class UserProvider extends ChangeNotifier {
  UserModel? userModel;
  UserRepo userRepo = UserRepo();
  int currentCount = 15;

  setCurrentCount(int num) {
    this.currentCount = num;
  }

  fetchUserlist() async {
    showLoading(getContext());
    await userRepo.getUserlist(currentCount);
    NavigationUtils.goBack(getContext());
  }

  fetchMoreUserlist() async {
    currentCount = currentCount + 10;
    showLoading(getContext());
    await userRepo.getUserlist(currentCount);
    NavigationUtils.goBack(getContext());
  }

  setUserList(UserModel model) {
    this.userModel = model;
    notifyListeners();
  }
}
