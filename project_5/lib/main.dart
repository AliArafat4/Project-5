import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_5/bloc/about_bloc/about_cubit.dart';
import 'package:project_5/bloc/auth_bloc/auth_bloc.dart';
import 'package:project_5/bloc/education%20bloc/education_cubit.dart';
import 'package:project_5/bloc/projects_bloc/projects_cubit.dart';
import 'package:project_5/bloc/skills_bloc/skills_cubit.dart';
import 'package:project_5/bloc/social_bloc/social_cubit.dart';
import 'package:project_5/bloc/theme_bloc/theme_cubit.dart';
import 'package:project_5/data/global_data.dart';
import 'package:project_5/screens/profile/profile_screen.dart';
import 'package:project_5/theme/theme.dart';

import 'prefrences/shared_prefrences.dart';
import 'screens/auth/sign_in_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

SharedPref pref = SharedPref();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await pref.initializePref();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    link = dotenv.env['LINK']!;
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(),
        ),
        BlocProvider<EducationCubit>(
          create: (context) => EducationCubit(),
        ),
        BlocProvider<SkillsCubit>(
          create: (context) => SkillsCubit(),
        ),
        BlocProvider<ProjectsCubit>(
          create: (context) => ProjectsCubit(),
        ),
        BlocProvider<SocialCubit>(
          create: (context) => SocialCubit(),
        ),
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
        BlocProvider<AboutCubit>(
          create: (context) => AboutCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          // pref.setToken(
          //     "eyJhbGciOiJIUzI1NiIsImtpZCI6IklrSUlxamthK24wQlZFb1EiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2RmemFudW5nZ2hncWpyeGZya2ZhLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiIxMzU3MWZhOS04YWNhLTQzZWQtODg5NS04ZTdiMjBiNjNlMGIiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzMwNjQwNzA5LCJpYXQiOjE3MzA2MzcxMDksImVtYWlsIjoiYUBnbWFpbC5jb20iLCJwaG9uZSI6IiIsImFwcF9tZXRhZGF0YSI6eyJwcm92aWRlciI6ImVtYWlsIiwicHJvdmlkZXJzIjpbImVtYWlsIl19LCJ1c2VyX21ldGFkYXRhIjp7fSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTczMDYzNzEwOX1dLCJzZXNzaW9uX2lkIjoiZWMyYzJiY2ItNzRiYS00OGY4LThjYzgtODhkZDdjOWZmNzgxIiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.zWrk81fV_URrzFSxT25sfv_JC7mQeoyOcxgMFqmYmMI");
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: themeMap[pref.getTheme() ? "dark" : "light"],
            home: pref.getToken().length > 1 ? const ProfileScreen() : SignInScreen(),
          );
        },
      ),
    );
  }
}
