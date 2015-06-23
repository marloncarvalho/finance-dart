library finance;

import 'package:dart_finance/components/category/category-edit.dart';
import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

@Component(selector: 'app')
@View(
    templateUrl: 'app.html',
    directives: const [RouterOutlet, RouterLink]
)
@RouteConfig(const [const {
  'path': '/categories/create',
  'component': CategoryEdit,
  'as': 'categoryEdit'
}])
class AppComponent {
  Router router;

  go() {
    router.navigate('/categories/create');
  }

  AppComponent(Router lRouter): router = lRouter {
  }

}