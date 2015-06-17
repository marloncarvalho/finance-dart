library finance;

import 'package:angular2/angular2.dart';
import 'package:dart_finance/component/category_form.dart';

@Component(selector: 'app')
@View(
    templateUrl: 'app.html', directives: const[CategoryForm]
)
class AppComponent {
  String name = 'Marlon';
}