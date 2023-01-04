import 'package:flutter/material.dart';
import 'package:test_task/data/category_model.dart';
import 'package:test_task/data/constants.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.inputs});
  final List<Input> inputs;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: widget.inputs.length,
                    itemBuilder: (context, index) {
                      Input input = widget.inputs[index];
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('${index + 1}'),
                          const SizedBox(width: 20),
                          Expanded(child: _inputField(input, index)),
                        ],
                      );
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    bool isValid = _formKey.currentState?.validate() ?? false;
                    ScaffoldMessenger.maybeOf(context)?.clearSnackBars();
                    if (isValid) {
                      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                        const SnackBar(
                          content: Text('Validated'),
                          backgroundColor: Colors.green,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                        const SnackBar(
                          content: Text('Ошибка'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                  child: const Text('Check'),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _inputField(Input input, int index) {
    switch (input.type) {
      case InputTypes.string:
        return TextFormField(
          decoration: InputDecoration(hintText: input.title),
          validator: (value) => _validator(value, input),
          maxLines: 3,
          minLines: 1,
        );
      case InputTypes.integer:
        return TextFormField(
            decoration: InputDecoration(
              hintText: input.title,
              contentPadding: EdgeInsets.zero,
            ),
            keyboardType: const TextInputType.numberWithOptions(signed: true),
            validator: (value) {
              return _validator(value, input);
            });
      case InputTypes.boolean:
        return CheckboxListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(input.title ?? ''),
          value: input.shown,
          onChanged: (value) {
            widget.inputs[index] = widget.inputs[index].copyWith(shown: value);
            setState(() {});
          },
        );
      default:
        return const TextField();
    }
  }

  String? _validator(String? value, Input input) {
    //optionals
    if (input.validationType == 'nullable' && input.validationValue == 'false') return null;
    //check for null and empty
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    //null
    if (input.validationType == null) return null;
    //len
    if (input.validationType == 'length') {
      if (input.type == InputTypes.string) {
        int? maxLength = int.tryParse(input.validationValue ?? '');
        if (maxLength == null) return null;

        if (value.length > maxLength) {
          return 'Max limit is $maxLength';
        }
      } else if (input.type == InputTypes.integer) {
        int? maxValidValue = int.tryParse(input.validationValue ?? '');
        int? curValue = int.tryParse(value);
        if (maxValidValue == null) return null;
        if (curValue == null) return null;
        if (curValue > maxValidValue) {
          return 'Max. value is: $maxValidValue';
        }
      }
    }

    return null;
  }
}
