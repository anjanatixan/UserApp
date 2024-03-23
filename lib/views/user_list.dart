import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sampleuser/bloc/data_list_bloc.dart';
import 'package:sampleuser/helper/utils.dart';
import 'package:sampleuser/views/user_details.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DataListBloc()..add(Started()),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey.shade100,
          centerTitle: true,
          title: Text(
            "User List",
            style: GoogleFonts.lato(
                fontSize: 15.sp,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ),
        ),
        body: BlocBuilder<DataListBloc, DataListState>(
          builder: (cnxt, state) {
            return bodyWidget(state, cnxt);
          },
        ),
      ),
    );
  }
}

bodyWidget(DataListState state, BuildContext cnt) {
  switch (state.status) {
    case BlocStatus.initial:
      return Container(
          height: MediaQuery.of(getContext()).size.height,
          width: MediaQuery.of(getContext()).size.width,
          child: Center(child: CircularProgressIndicator()));
    case BlocStatus.success:
      return view_widget(state, cnt);
    case BlocStatus.error:
      return Text("Something Went wrong");
  }
}

view_widget(DataListState state, BuildContext cnt) {
  return ListView.builder(
      itemCount: state.userModel?.users.length ?? 0,
      itemBuilder: (context, index) {
        var userList = state.userModel?.users[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: InkWell(
            onTap: ()async {
             await context.read<DataListBloc>()..add(InitialIndex(index));
             await context.read<DataListBloc>()
                ..add(updateCount(state.userModel?.users.length ?? 0));
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BlocProvider.value(
                    value: BlocProvider.of<DataListBloc>(cnt),
                    child: UserDetails(count: state.userModel?.users.length),
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          userList?.profilePicture.toString() ?? ""),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            (userList?.firstName ?? "") +
                                " " +
                                (userList?.lastName ?? ""),
                            style: GoogleFonts.lato(
                                fontSize: 12.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                        Text(userList?.city ?? "",
                            style: GoogleFonts.lato(
                                fontSize: 12.sp,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
