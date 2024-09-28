// import 'package:firebase_auth/firebase_auth.dart';

// class AuthMethods{
//   final FirebaseAuth auth=FirebaseAuth.instance;

//   getCurrentUser()async{
//     return await auth.currentUser;
//   }

//   Future SignOut()async{
//     await FirebaseAuth.instance.signOut();
//   }
//   Future deleteuser()async{
//     User? user=await FirebaseAuth.instance.currentUser;
//     user?.delete();
//   }
// }
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<User?> getCurrentUser() async {
    return auth.currentUser;
  }

  Future<bool> SignOut() async {
    try {
      await auth.signOut(); // Attempt to sign out
      return true; // Return true if sign-out is successful
    } catch (e) {
      print("Error signing out: $e"); // Log any errors
      return false; // Return false if there's an error
    }
  }

  Future<bool> deleteUser() async {
    User? user = auth.currentUser;
    if (user != null) {
      try {
        await user.delete(); // Attempt to delete the user
        return true; // Return true if deletion is successful
      } catch (e) {
        print("Error deleting user: $e"); // Log any errors
        return false; // Return false if there's an error
      }
    }
    return false; // Return false if no user is logged in
  }
}
