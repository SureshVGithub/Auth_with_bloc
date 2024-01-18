import 'dart:convert';
import 'package:auth_with_bloc/src/features/home/data/models/userlist_model.dart';
import 'package:http/http.dart' as http;

import '../../../../utils/api_util/api_headers.dart';
import '../../../../utils/api_util/api_url.dart';

class DataRepositoryHome {
  Future<UsersList> getUserlist() async {
    try {
      final res =
          await http.get(Uri.parse(ApiUrl.usersList), headers: headers);

      if (res.statusCode == 200) {
        return UsersList.fromJson(jsonDecode(res.body));
      } else {
        throw Exception('Failed to load user');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
