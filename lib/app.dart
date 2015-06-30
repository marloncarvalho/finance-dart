library finance;

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';
import 'package:dart_finance/components/home.dart';

@Component(selector: 'app')
@View(
    template: '<router-outlet></router-outlet>',
    directives: const [RouterOutlet, RouterLink]
)
@RouteConfig(const [ const {
  'path': 'home',
  'component': Home,
  'as': '/home'
}])
class AppComponent {
  Router router;

  AppComponent(Router lRouter): router = lRouter {
    router.navigate('/home');
  }

}