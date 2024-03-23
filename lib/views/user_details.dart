import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sampleuser/bloc/data_list_bloc.dart';
import 'package:sampleuser/helper/navigation.dart';

class UserDetails extends StatefulWidget {
  final int? count;
  const UserDetails({super.key, required this.count});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    var userBloc = BlocProvider.of<DataListBloc>(context, listen: true);
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
      body: BlocBuilder<DataListBloc, DataListState>(
        bloc: userBloc,
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
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
                                  backgroundImage: NetworkImage(state
                                          .userModel
                                          ?.users[state.index ?? 0]
                                          .profilePicture
                                          .toString() ??
                                      ""),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                    (state.userModel?.users[state.index ?? 0]
                                                .firstName ??
                                            "") +
                                        " " +
                                        (state
                                                .userModel
                                                ?.users[state.index ?? 0]
                                                .lastName ??
                                            ""),
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
                            Text(
                                'Email : ${state.userModel?.users[state.index ?? 0].email}',
                                style: GoogleFonts.lato(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: 8),
                            Text(
                                'Phone : ${state.userModel?.users[state.index ?? 0].phone}',
                                style: GoogleFonts.lato(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: 8),
                            Text(
                                'Job : ${state.userModel?.users[state.index ?? 0].job}',
                                style: GoogleFonts.lato(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: 8),
                            Text(
                                'Address : ${(state.userModel?.users[state.index ?? 0].city ?? "") + " ," + (state.userModel?.users[state.index ?? 0].street ?? "") + " , " + (state.userModel?.users[state.index ?? 0].state ?? "") + " , " + (state.userModel?.users[state.index ?? 0].country ?? "") + " , " + (state.userModel?.users[state.index ?? 0].zipcode ?? "")}',
                                style: GoogleFonts.lato(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Text('DOB : ',
                                    style: GoogleFonts.lato(
                                        fontSize: 14.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500)),
                                Text(
                                    state.userModel?.users[state.index ?? 0]
                                            .getFormattedDateOfBirth() ??
                                        "",
                                    style: GoogleFonts.lato(
                                        fontSize: 14.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                            SizedBox(height: 8),
                            Text(
                                'Gender : ${state.userModel?.users[state.index ?? 0].gender}',
                                style: GoogleFonts.lato(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: 8),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                        onPressed: () {
                          if (state.index == 0) {
                          } else {
                            context.read<DataListBloc>()
                              ..add(Decrement(state.index ?? 0));
                          }
                        },
                        child: Text("Previous")),
                    OutlinedButton(
                        onPressed: () {
                          int? value=state.index;
                          if (widget.count! >value!) {
                           
                          }else{
                             context.read<DataListBloc>()
                              ..add(Increment(state.index ?? 0));
                          }
                        },
                        child: Text("Next")),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
