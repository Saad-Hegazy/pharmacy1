
import '../../../../core/class/crud.dart';
import '../../../../linkabi.dart';
class SignupData{
  Crud crud;
  SignupData(this.crud);
  postdata(String username,String password,String email,String phone) async{
    var response = await crud.postData(AppLink.signUp,{
      "username": username,
      "password":password ,
      "email":email ,
      "phone":phone ,
    });

    return  response.fold((l)=>l,(r)=>r);
  }


  postdataverifyemail(String email) async{
    var response = await crud.postData(AppLink.signupemail,{
      "email":email ,
    });

    return  response.fold((l)=>l,(r)=>r);
  }

}