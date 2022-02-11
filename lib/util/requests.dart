import 'dart:convert';
import 'package:casa_simple/components/loading.dart';
import 'package:http/http.dart' as http;
import 'package:casa_simple/components/modelInfo.dart';
import 'package:casa_simple/util/utils.dart';

class Requests{


  static Future<List> onRequestPostNotAuthenticate(context,route, obj) async {
    PersonalUtil.onNavigatorNext(LoadingFull(), context);
    var url = Uri.parse("${PersonalUtil.onRoute}/${route}");
    var response = await http.post(url, body: jsonEncode(obj), headers: {"Content-Type": "application/json"});
    PersonalUtil.onNavigatorBack(context);
    await ModalInfo.onShowModalInfo(response,context);
    List list = <Object>[];
    list.add(response.statusCode);
    // list.add(jsonDecode(response.body));
    return list;
  }
}