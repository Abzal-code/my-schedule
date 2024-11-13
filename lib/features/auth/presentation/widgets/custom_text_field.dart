import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String label;
  final IconData icon;
  final bool obscureText;
  final void Function()? onTap;
  final bool? readOnly;
  final int? maxLines;

  const CustomTextField({
    super.key,
    this.controller,
    required this.label,
    required this.icon,
    this.obscureText = false,
    this.keyboardType,
    this.onTap,
    this.readOnly,
    this.maxLines,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: (value) => value!.isEmpty ? 'Enter ${widget.label}' : null,
      decoration: InputDecoration(
        label: Text(widget.label,
            style: const TextStyle(
              fontSize: 16,
            )),
        prefixIcon: Icon(widget.icon),
        border: const OutlineInputBorder(),
        suffixIcon: widget.obscureText
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
                icon: Icon(
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                ),
              )
            : null,
      ),
      obscureText: _passwordVisible ? false : widget.obscureText,
      keyboardType: widget.keyboardType,
      readOnly: widget.readOnly ?? false,
      onTap: widget.onTap,
      maxLines: widget.maxLines,
    );
  }
}
