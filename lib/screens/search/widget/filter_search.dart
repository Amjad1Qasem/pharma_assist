
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterCheckboxItem extends HookWidget {
  const FilterCheckboxItem({
    super.key,
    required this.text,
    required this.initialValue,
    required this.onChanged,
  });

  final String text;
  final bool initialValue;
  final Function(bool value) onChanged;

  @override
  Widget build(BuildContext context) {
    final value = useState(initialValue);
    return CheckboxListTile(
      title: Text(
        text,
        style: Theme.of(context).textTheme.labelSmall,
      ),
      value: value.value,
      onChanged: (bool? val) {
        value.value = !value.value;
        onChanged(value.value);
      },
      activeColor: Colors.blue,
      checkColor: Colors.white,
      side: BorderSide(
          width: 1.5.w, color: Theme.of(context).colorScheme.outline),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
