import 'package:flutter/material.dart';
import 'package:layout_example/screen/home_screen.dart';

class Page {
  final String title;
  final Icon icon;
  final String label;
  final Widget page;

  Page({this.title, this.icon, this.label, this.page});
}

List<Page> pages = [
  Page(
    icon: Icon(Icons.home),
    label: "home",
    page: HomeScreen(),
    title: "หน้าแรก",
  ),
  Page(
    icon: Icon(Icons.home),
    label: "news",
    page: HomeScreen(),
    title: "ข่าวสาร",
  ),
  Page(
    icon: Icon(Icons.home),
    label: "activity",
    page: HomeScreen(),
    title: "กิจกรรม",
  ),
];
