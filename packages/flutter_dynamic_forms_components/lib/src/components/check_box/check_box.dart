import 'package:dynamic_forms/dynamic_forms.dart';
import 'package:meta/meta.dart';

class CheckBox extends FormElement {
  static const String VALUE_PROPERTY_NAME = "value";
  static const String LABEL_PROPERTY_NAME = "label";

  bool get value => properties[VALUE_PROPERTY_NAME].value;
  Stream<bool> get valueChanged => properties[VALUE_PROPERTY_NAME].valueChanged;
  String get label => properties[LABEL_PROPERTY_NAME].value;
  Stream<String> get labelChanged =>
      properties[LABEL_PROPERTY_NAME].valueChanged;

  void fillCheckBox({
    @required String id,
    @required ElementValue<FormElement> parent,
    @required ElementValue<bool> isVisible,
    @required ElementValue<bool> value,
    @required ElementValue<String> label,
  }) {
    fillFormElement(id: id, parent: parent, isVisible: isVisible);
    registerElementValue(VALUE_PROPERTY_NAME, value);
    registerElementValue(LABEL_PROPERTY_NAME, label);
  }

  @override
  FormElement getInstance() {
    return CheckBox();
  }
}