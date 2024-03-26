import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sampleuser/bloc/data_list_bloc.dart';
import 'package:sampleuser/views/user_details.dart';
import 'package:sampleuser/views/user_list.dart';

final router = GoRouter(
   initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => UserListScreen(),
    ),
    GoRoute(
    path: '/user_details/:userId',
    builder: (context, state) {
      String g=state.pathParameters['userId']??"";
      return BlocProvider.value(
                      value: state.extra as DataListBloc,
                      child: UserDetails(),
                    );
    }
  

   ),
  ],
);