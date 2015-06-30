library finance.category;

import 'package:dart_finance/services/category.ws.dart';
import 'package:angular2/angular2.dart';

@Component(selector: 'category-list', appInjector: const[CategoryWS])
@View(templateUrl: 'category/category-list.html', directives: const[NgFor])
class CategoryList {
  CategoryWS categoryWS;
  List<Category> categories = [];

  CategoryList(CategoryWS lCategoryWS) : categoryWS = lCategoryWS {
    categoryWS.list().then((result) => categories = result);
  }

}