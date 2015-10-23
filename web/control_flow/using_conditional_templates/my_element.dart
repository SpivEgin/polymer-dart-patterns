@HtmlImport('my_element.html')
library my_element;

import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  @property bool showAnswer = false;

  MyElement.created() : super.created();

  @reflectable
  void toggleView([_, __]) {
    set('showAnswer', !showAnswer);
  }

  @reflectable
  String buttonText(_) => 'Show ${showAnswer ? 'question' : 'answer'}';
}
