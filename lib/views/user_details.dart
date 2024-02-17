import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sampleuser/helper/navigation.dart';
import 'package:sampleuser/provider/user_provider.dart';

class UserDetails extends StatefulWidget {
  final int index;
  const UserDetails({super.key, required this.index});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade100,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              NavigationUtils.goBack(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 18.sp,
            )),
        title: Text(
          "User Details",
          style: GoogleFonts.lato(
              fontSize: 15.sp,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Consumer<UserProvider>(builder: (context, provider, child) {
        var userList = provider.userModel!.users[widget.index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(10.r)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
          
                    child: Center(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30.r,
                            backgroundColor: Colors.white,
                            backgroundImage:
                                NetworkImage(userList.profilePicture.toString()),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(userList.firstName + " " + userList.lastName,
                              style: GoogleFonts.lato(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Email : ${userList.email}',
                          style: GoogleFonts.lato(
                              fontSize: 14.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                      SizedBox(height: 8),
                      Text(
                        'Phone : ${userList.phone}',
                        style: GoogleFonts.lato(
                              fontSize: 14.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500)
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Job : ${userList.job}',
                      style: GoogleFonts.lato(
                              fontSize: 14.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500)
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Address : ${userList.city+" ,"+userList.street+ " , "+userList.state+" , "+userList.country+" , "+userList.zipcode}',
                      style: GoogleFonts.lato(
                              fontSize: 14.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500)
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'DOB : ',
                           style: GoogleFonts.lato(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)
                          ),
                            Text(
                            '${userList.dateOfBirth}'.split(" ").first,
                           style: GoogleFonts.lato(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Gender : ${userList.gender}',
                       style: GoogleFonts.lato(
                              fontSize: 14.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500)
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
