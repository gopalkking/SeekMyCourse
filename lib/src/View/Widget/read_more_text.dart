import 'package:flutter/material.dart';

class ReadMoreText extends StatefulWidget {
  final String text;
  final int trimLines;

  const ReadMoreText({super.key, required this.text, this.trimLines = 2});

  @override
  State<ReadMoreText> createState() => _ReadMoreTextState();
  
}

class _ReadMoreTextState extends State<ReadMoreText> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    final defaultStyle = theme.textTheme.bodyMedium;
    final linkStyle = TextStyle(color: theme.splashColor, decoration: TextDecoration.underline,fontSize:16 );

    return LayoutBuilder(builder: (context, size) {
      final span = TextSpan(text: widget.text, style: defaultStyle);
      final tp = TextPainter(
        text: span,
        maxLines: widget.trimLines,
        textDirection: TextDirection.ltr,
      )..layout(maxWidth: size.maxWidth);

      final isOverflow = tp.didExceedMaxLines;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: defaultStyle,
            maxLines: _isExpanded ? null : widget.trimLines,
            overflow: _isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
            softWrap: true,
          ),
          if (isOverflow)
            InkWell(
              onTap: () => setState(() => _isExpanded = !_isExpanded),
              child: Text(
                _isExpanded ? 'Read Less' : 'Read More',
                style: linkStyle,
                softWrap: true,
              ),
            ),
        ],
      );
    });
  }
}
