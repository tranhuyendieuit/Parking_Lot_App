import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/presentation/screens/profile/page/profile_body.dart';

import '../../home/bloc/home_bloc.dart';
import '../../home/bloc/home_event.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
// TODO: REPLACE WITH THE EXACT BLOC, THIS IS JUST AN EXAMPLE TO PRINT DATA FOR THE CASE WHERE THE API REQUIRES AN ACCESS TOKEN
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc()..add(const HomeInitialEvent()),
      child: const ProfileBody(),
    );
  }
}
