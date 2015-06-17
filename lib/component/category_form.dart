library finance.category;

import 'package:dart_finance/service/category.ws.dart';
import 'package:angular2/angular2.dart';
import 'package:dart_finance/model/category.dart';

@Component(selector: 'category-form', appInjector: const[CategoryWS])
@View(templateUrl: 'category_form.html', directives: const[NgIf, NgFor])
class CategoryForm {
  List<Category> categories;
  CategoryWS categoryWS;
  String successMessage;

  CategoryForm(CategoryWS lCategoryWS) : categoryWS = lCategoryWS {
    categoryWS.list().then((result) {
      categories = result;
    });
  }

  add(String name) {
    categoryWS.save(name);
    successMessage = "Categoria ${name} adicionada com sucesso";
  }

}