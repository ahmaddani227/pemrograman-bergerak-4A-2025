import 'package:flutter/material.dart';
import 'package:praktikum_pember/shared/theme.dart';

class CustomDropdown extends StatefulWidget {
  final String label;
  final String hint;
  final List<String> items;
  final ValueChanged<String?>? onChanged;
  final String? Function(String?)? validator;

  const CustomDropdown({
    super.key,
    required this.label,
    required this.hint,
    required this.items,
    this.onChanged,
    this.validator,
  });

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: blackTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
        ),
        const SizedBox(height: 8),
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.white), // Style border enabled
          ),
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: greyTextStyle,
              border:
                  InputBorder
                      .none, // Hide default border of DropdownButtonFormField
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              filled: true,
              fillColor: Colors.white,
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.red),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            value: _selectedValue,
            items:
                widget.items.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item, style: blackTextStyle),
                  );
                }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedValue = newValue;
              });
              if (widget.onChanged != null) {
                widget.onChanged!(newValue);
              }
            },
            validator: widget.validator,
            icon: const Icon(Icons.expand_more),
            iconEnabledColor: kBlackColor,
          ),
        ),
      ],
    );
  }
}
