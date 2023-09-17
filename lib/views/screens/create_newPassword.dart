import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/helpers/constants.dart';
import 'package:untitled3/widgets/custom_textField.dart';
class createNewPassword extends StatefulWidget{
  @override
  State<createNewPassword> createState() => _createNewPasswordState();
}

class _createNewPasswordState extends State<createNewPassword> {
  bool isHidden=false;

  IconData suffix=Icons.visibility_outlined;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: NotesColor.whiteColor,
      appBar: AppBar(
        backgroundColor: NotesColor.whiteColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: NotesColor.blackColor,
            size: 15.sp,
          ),
        ),
        title: Text(
          'Back to Login',
          style: TextStyle(
            fontFamily: 'poppins',
            fontWeight: FontWeight.w500,
            fontSize: 13.sp,
            color: NotesColor.appColor,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create a New Password',
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 27.sp,
                  color: NotesColor.neutralBlackColor,
                ),
              ),
              SizedBox(height: 10.sp,),
              Text(
                'Your new password should be different from the previous password',
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: NotesColor.neutralBaseColor,
                ),
              ),
              SizedBox(height: 10.sp,),
              Text(
                'New Password',
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 13.sp,
                  color: NotesColor.neutralBlackColor,
                ),
              ),
              SizedBox(height: 5.sp,),
              customTextField(
                hintText: '********',
                isHidden: isHidden,
                suffix: suffix,
                onTab: (){
                  setState(() {
                    isHidden=!isHidden;
                  });
                  isHidden==true
                  ?suffix=Icons.visibility_off_outlined
                      :Icons.visibility_outlined;
                },
              ),
              SizedBox(height: 30.sp,),
              Text(
                'Retype New Password',
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 13.sp,
                  color: NotesColor.neutralBlackColor,
                ),
              ),
              SizedBox(height: 10.sp,),
              customTextField(hintText: '*******',
              isHidden: isHidden,
              suffix: suffix,
              onTab: (){
                setState(() {
                  isHidden=!isHidden;
                });
                isHidden==true
                ?suffix=Icons.visibility_off_outlined
                    :Icons.visibility_outlined;
              },
              ),
              SizedBox(height: 30.sp,),
              Center(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.sp,horizontal: 30.sp),
                  decoration: BoxDecoration(
                    color: NotesColor.appColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('Create Password',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: NotesColor.whiteColor,
                    ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}