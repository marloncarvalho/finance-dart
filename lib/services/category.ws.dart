library finance.category.ws;

import 'package:angular2/angular2.dart';
import "dart:html";
import 'dart:convert';
import 'package:dart_finance/models/category.dart';

@Injectable()
class CategoryWS {

  List<Category> list() async {
    return await HttpRequest.request("./categories.json").then((req) {
      List<Category> result = new List<Category>();
      var list =  JSON.decode(req.responseText);
      for(var i = 0; i < list.length; i++) {
        result.add(new Category(list[i]['name']));
      }

      return result;
    });
  }

  save(String name) async {

  }

}