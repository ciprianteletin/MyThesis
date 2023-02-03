import 'package:flutter/material.dart';

import '../../app_styles.dart';

class SearchField extends StatefulWidget {
  final String hintText;
  const SearchField(this.hintText);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  _onSearchChanged(String query) {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final OutlineInputBorder border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(61),
        borderSide: const BorderSide(color: Colors.black, width: 1));
    return Container(
      padding: const EdgeInsets.only(left: 50),
      child: TextField(
        autofocus: false,
        autocorrect: true,
        onChanged: _onSearchChanged,
        keyboardType: TextInputType.name,
        textAlignVertical: TextAlignVertical.bottom,
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Icon(
              Icons.search,
              color: DarkGreyColors.darkGrey1,
            ),
          ),
          hintText: 'Thesis title...',
          contentPadding: EdgeInsets.only(bottom: 25),
          filled: true,
          fillColor: Colors.white.withOpacity(0.6),
          hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: DarkGreyColors.darkGrey1),
          enabledBorder: border,
          focusedBorder: border,
        ),
      ),
    );
  }
}
