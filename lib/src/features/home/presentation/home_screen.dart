import 'package:auth_with_bloc/src/features/home/bloc/userlist_bloc.dart';
import 'package:auth_with_bloc/src/utils/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<UserlistBloc>().add(FetchUserList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Users'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              usersList(),
            ],
          ),
        ));
  }

  BlocBuilder<UserlistBloc, UserlistState> usersList() {
    return BlocBuilder<UserlistBloc, UserlistState>(builder: (context, state) {
      if (state is UserlistFailure) {
        return Text('Error : ${state.error}');
      } else if (state is! UserlistSuccess) {
        return const Center(
          child: CircularProgressIndicator(
            color: ColorConstants.buttonColor,
          ),
        );
      }
      return SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: state.usersList.data!.length,
          itemBuilder: ((context, index) {
            return SizedBox(
              height: 120,
              child: Card(
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        // fit: BoxFit.fitHeight,
                        state.usersList.data![index].avatar.toString(),
                        // height: 80
                      ),
                    ),
                    title: Text(
                        '${state.usersList.data![index].firstName!.toString()} ${state.usersList.data![index].lastName!.toString()}'),
                    subtitle:
                        Text(state.usersList.data![index].email!.toString()),
                  ),
                ),
              ),
            );
          }),
        ),
      );
    });
  }
}
