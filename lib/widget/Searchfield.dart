import 'package:flutter/material.dart';

class Search_field extends StatefulWidget {
  final onChanged;
  final controller;
  final onTap;

  const Search_field({super.key, this.onChanged, this.controller, this.onTap});

  @override
  State<Search_field> createState() => _Search_BoxState();
}

class _Search_BoxState extends State<Search_field> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Colors.black12,
        ),
        child: TextField(
          onChanged:widget.onChanged,
          controller: widget.controller,
          decoration: InputDecoration(
              hintText: 'Search by Product, Brands & more',
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search, color: Colors.redAccent,),
              suffixIcon: GestureDetector(
                onTap: widget.onTap,
                child: const Icon(
                  Icons.clear,
                  color: Colors.black54,
                ),
              ),
              contentPadding: EdgeInsets.all(8.0)),
        ),
      ),
    );
  }
}