import 'package:flutter/material.dart' show Color, Colors, CustomPainter, Size;
import 'package:info_popup/src/constants/popup_constants.dart';
import 'package:info_popup/src/enums/arrow_direction.dart';

/// [InfoPopupArrowTheme] is used to customize the arrow of the popup.
class InfoPopupArrowTheme {
  /// [InfoPopupArrowTheme] is creates a [InfoPopupArrowTheme] constructor.
  /// [arrowDirection] is used to customize the direction of the arrow.
  /// [arrowSize] is used to customize the size of the arrow.
  /// [arrowGap] is used to customize the gap between the arrow and the content.
  /// [arrowPainter] is used to customize the painter of the arrow.
  const InfoPopupArrowTheme({
    this.arrowSize = PopupConstants.defaultArrowSize,
    this.color = Colors.black,
    this.arrowPainter,
  });

  /// The size [arrowSize] of the arrow indicator.
  final Size arrowSize;

  /// The [arrowDirection] of the arrow indicator.
  // Blur mod only works with specific shape that only works with ArrowDirection down
  // That's why we omit it
  final ArrowDirection arrowDirection = ArrowDirection.down;

  /// The [color] of the arrow indicator.
  final Color color;

  /// The [arrowPainter] is used to draw the arrow indicator.
  final CustomPainter? arrowPainter;

  /// [copyWith] is used to copy the [InfoPopupArrowTheme] with new values.
  InfoPopupArrowTheme copyWith({
    Size? arrowSize,
    ArrowDirection? arrowDirection,
    Color? color,
    CustomPainter? arrowPainter,
  }) {
    return InfoPopupArrowTheme(
      arrowSize: arrowSize ?? this.arrowSize,
      color: color ?? this.color,
      arrowPainter: arrowPainter ?? this.arrowPainter,
    );
  }
}
