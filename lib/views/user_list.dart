import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sampleuser/bloc/data_list_bloc.dart';
import 'package:sampleuser/helper/utils.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DataListBloc dataListBloc = GetIt.I<DataListBloc>();
    return BlocProvider(
      create: (context) => dataListBloc..add(Started()),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey.shade100,
          centerTitle: true,
          title: Text(
            "Data",
            style: GoogleFonts.lato(
                fontSize: 15.sp,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ),
        ),
        drawer: Container(
          child: ListView(
            children: [],
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
          height: MediaQuery.of(cnt).size.height,
          width: MediaQuery.of(cnt).size.width,
          child: Center(child: CircularProgressIndicator()));
    case BlocStatus.success:
      return view_widget(state, cnt);
    case BlocStatus.error:
      return Text("Something Went wrong");
  }
}

view_widget(DataListState state, BuildContext cnt) {
  final ScrollController _scrollController = ScrollController();
  return ListView.builder(
      controller: _scrollController
        ..addListener(() {
          log("111");

          if (_scrollController.position.maxScrollExtent ==
              _scrollController.offset) {
            GetIt.I<DataListBloc>()
              ..add(updateCount(state.userModel?.users.length ?? 0));
          }
        }),
      itemCount: state.userModel?.users.length ?? 0,
      itemBuilder: (context, index) {
        var userList = state.userModel?.users[index];
        if (index == state.userModel!.users.length - 1 && state.isFetching) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: InkWell(
            onTap: () async {
              await context.read<DataListBloc>()
                ..add(InitialIndex(index));
              await context.read<DataListBloc>()
                ..add(updateCount(state.userModel?.users.length ?? 0));
              GoRouter.of(context).push('/user_details/355',
                  // extra: context.read<DataListBloc>()
                  );
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => BlocProvider.value(
              //       value: BlocProvider.of<DataListBloc>(cnt),
              //       child: UserDetails(),
              //     ),
              //   ),
              // );
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
