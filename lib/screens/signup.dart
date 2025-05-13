import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  final bool _passwordVisible = false;
  const SignupScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 18.w, right: 18.w),
          child: Column(
            children: [
              SizedBox(height: 21.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sign up",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18.sp,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.cancel_outlined,
                      color: Colors.grey[400],
                      size: 21.r,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18.h,),
              SizedBox(
                height: 31.h,
                width: 247.w,
                child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r))),
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.g_mobiledata,
                      color: Colors.grey[400],
                      size: 21.r,
                    ),
                    Text("Log in with Google",
                      style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13.sp,
                    ),)
                  ],
                )),
              ),
              SizedBox(height: 20.h,),
              Divider(height: 0.h, color: Colors.grey[400], thickness: 1.h,),
              SizedBox(height: 20.h,),
              TextField(
                decoration: InputDecoration(
                  label: Text("Name"),
                  hintText: "Kafta Amer",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    // borderSide: BorderSide(color: Colors.black),
                  )
                ),
              ),
              SizedBox(height: 19.h,),
              TextField(
                decoration: InputDecoration(
                    label: Text("Email"),
                    hintText: "Example@gmail.com",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      // borderSide: BorderSide(color: Colors.black),
                    )
                ),
              ),
              SizedBox(height: 19.h,),
              TextField(
                autocorrect: false,
                obscureText: _passwordVisible,
                decoration: InputDecoration(
                    label: Text("Password"),
                    hintText: "at least 8 characters",
                    suffixIcon: IconButton(onPressed: (){
                      // _passwordVisible = !_passwordVisible;
                    }, icon: Icon(Icons.visibility)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      // borderSide: BorderSide(color: Colors.black),
                    )
                ),
              ),
              SizedBox(height: 12.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index){
                  return Expanded(child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 4), // spacing between parts
                    height: 1.h, // thickness of the line
                    color: Colors.grey[400],
                  ),);
                }),
              ),
              SizedBox(height: 20.h,),
              CheckboxListTile(
                title: Text("I agree with Terms and Privcy"),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: true,
                  onChanged: (bool? value){},
                activeColor: Colors.blue,
              ),
              SizedBox(height: 20.h,),
              SizedBox(
                height: 31.h,
                width: 247.w,
                child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[600], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.g_mobiledata,
                          color: Colors.grey[400],
                          size: 21.r,
                        ),
                        Text("Log in with Google",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13.sp,
                          ),)
                      ],
                    )),
              ),
              Divider(height: 19.h,),
              Text("Already Have an account?"),
              TextButton(
                  child: Text("Login"),
                onPressed: (){},
              )
            ],
          ),
        ),
      ),
    );
  }
}
