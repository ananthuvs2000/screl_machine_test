import 'package:flutter/material.dart';


class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    required this.hint,
    required this.controller,
    required this.validator,
    this.prefixIcon,
    super.key,
  });

   final String hint;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Icon? prefixIcon;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late FocusNode focusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNode = FocusNode();
    focusNode.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
       
        TextFormField(
          // Events
          
          //
          controller: widget.controller,
          validator: widget.validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          expands: false,
          
          focusNode: focusNode,
          textInputAction: TextInputAction.done,

          // Styles

          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 0,
          ),
          decoration: InputDecoration(
            isDense: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Colors.black.withOpacity(0.25),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black54,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black54),
              borderRadius: BorderRadius.circular(10),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: widget.prefixIcon,
            
            hintText: widget.hint,
            hintStyle: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 14,
              letterSpacing: 0,
              fontWeight: FontWeight.normal,
            ),
            errorStyle: TextStyle(
              color: Colors.red,
              fontSize: 12,
              letterSpacing: 0,
              height: 1.1,
            ),
            errorMaxLines: 2,
            filled: true,
            fillColor: Colors.white70,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    focusNode.dispose();
  }
}
