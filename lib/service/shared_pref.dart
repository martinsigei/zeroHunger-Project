import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper{

  static String userIdKey="USERKEY";
  static String userNameKey="USERNAMEKEY";
  static String userEmailKey="USEREMAILKEY";
  static String userWalletKey="USERWALLETKEY";
  static String userProfileKey="USERPROFILEKEY";

  Future<bool> SaveUserId(String getUserId)async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.setString(userIdKey, getUserId);
  }
  
  Future<bool> SaveUserName(String getUserName)async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.setString(userNameKey, getUserName);
  }

  Future<bool> SaveUserEmail(String getUserEmail)async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.setString(userEmailKey, getUserEmail);
  }

  Future<bool> SaveUserWallet(String getUserWallet)async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.setString(userWalletKey, getUserWallet);
  }

  Future<bool> SaveUserProfile(String getUserProfile)async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.setString(userProfileKey, getUserProfile);
  }

  Future<String?>getUserId()async{
  SharedPreferences prefs=await SharedPreferences.getInstance();
  return prefs.getString(userIdKey);
  }

  Future<String?>getUserName()async{
  SharedPreferences prefs=await SharedPreferences.getInstance();
  return prefs.getString(userNameKey);
  }

  Future<String?>getUserEmail()async{
  SharedPreferences prefs=await SharedPreferences.getInstance();
  return prefs.getString(userEmailKey);
  }

  Future<String?>getUserWallet()async{
  SharedPreferences prefs=await SharedPreferences.getInstance();
  return prefs.getString(userWalletKey);
  }

  Future<String?>getUserProfile()async{
  SharedPreferences prefs=await SharedPreferences.getInstance();
  return prefs.getString(userProfileKey);
  }

}