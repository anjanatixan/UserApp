import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sampleuser/helper/navigation.dart';
import 'package:sampleuser/helper/utils.dart';
import 'package:sampleuser/provider/user_provider.dart';
import 'package:sampleuser/views/user_details.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  ScrollController _controller = ScrollController();

  @override
  void initState() {
    Future.delayed(Duration(seconds: 0), () async {
      await getContext().read<UserProvider>().fetchUserlist();
      _controller.addListener(() async {
        if (_controller.position.maxScrollExtent == _controller.offset) {
          showLoading(context);
          await getContext().read<UserProvider>().fetchMoreUserlist();
          NavigationUtils.goBack(context);
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Consumer<UserProvider>(builder: (context, provider, child) {
        return provider.userModel != null
            ? ListView.builder(
                controller: _controller,
                itemCount: provider.userModel!.users.length,
                itemBuilder: (context, index) {
                  var userList = provider.userModel!.users[index];
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    child: InkWell(
                      onTap: () {
                        NavigationUtils.goNext(
                            context,
                            UserDetails(
                              index: index,
                            ));
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
                                    userList.profilePicture.toString()),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      userList.firstName +
                                          " " +
                                          userList.lastName,
                                      style: GoogleFonts.lato(
                                          fontSize: 12.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500)),
                                  Text(userList.city,
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
                })
            : Container();
      }),
    );
  }
}
