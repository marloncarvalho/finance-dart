library finance.category;

import 'package:dart_finance/services/category.ws.dart';
import 'package:angular2/angular2.dart';

@Component(selector: 'category-edit', appInjector: const[CategoryWS])
@View(templateUrl: 'category/category-edit.html', directives: const[NgIf, NgFor])
class CategoryEdit {
  CategoryWS categoryWS;
  String successMessage;

  CategoryEdit(CategoryWS lCategoryWS) : categoryWS = lCategoryWS {
  }

  add(String name) {
    categoryWS.save(name);
    successMessage = "Categoria ${name} adicionada com sucesso";
  }

}