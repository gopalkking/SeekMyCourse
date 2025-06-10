import 'package:flutter/material.dart';

Future<void> showFilterMenu({
  required BuildContext context,
  required GlobalKey key,
  required List<PopupMenuEntry> items,
}) async {
  final RenderBox box = key.currentContext!.findRenderObject() as RenderBox;
  final Offset position = box.localToGlobal(Offset.zero);
  final Size size = box.size;

  final screenHeight = MediaQuery.of(context).size.height;

  final bool showBelow = position.dy < screenHeight / 2;

  await showMenu(
    context: context,
    position: RelativeRect.fromLTRB(
      position.dx,
      showBelow ? position.dy + size.height : position.dy - (items.length * 48),
      position.dx + size.width,
      0,
    ),
    items: items,
    color: Colors.black,
  );
}
