import 'package:dynamic_forms/dynamic_forms.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dynamic_forms/flutter_dynamic_forms.dart';

class ParsedFormProvider<T extends ParsedFormManager> extends StatelessWidget {
  final CreateFormManager<T> create;
  final String content;
  final List<FormElementParser<FormElement>> parsers;
  final Widget child;
  final bool lazy;

  const ParsedFormProvider({
    Key key,
    @required this.content,
    @required this.parsers,
    @required this.create,
    this.child,
    this.lazy,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormProvider(
      create: (context) {
        var parsedFormProvider = this.create(context);
        parsedFormProvider.init(content: content, parsers: parsers);
        return parsedFormProvider;
      },
      child: child,
      lazy: lazy,
    );
  }
}
