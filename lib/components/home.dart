library finance.category;

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';
import 'package:dart_finance/components/category/category-edit.dart';
import 'package:dart_finance/components/category/category-list.dart';

@Component(selector: 'home')
@View(templateUrl: 'home.html', directives: const[])
@RouteConfig(const [const {
  'path': '/categories/list',
  "component": CategoryList,
  'as': 'categoryList'
}, const {
  'path': '/categories/create',
  'component': CategoryEdit,
  'as': 'categoryEdit'
}])
class Home {

  Home() {
  }

}