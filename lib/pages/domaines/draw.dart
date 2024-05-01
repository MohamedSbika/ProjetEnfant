import 'dart:ui';

import 'package:flutter/material.dart';

class DrawingBoard extends StatefulWidget {
  @override
  _DrawingBoardState createState() => _DrawingBoardState();
}

class _DrawingBoardState extends State<DrawingBoard> {
  Color selectedColor = Colors.black;
  double strokeWidth = 5;
  List<DrawingPoint> drawingPoints = [];

  List<Color> colors = [
    Colors.pink,
    Colors.red,
    Colors.black,
    Colors.yellow,
    Colors.amberAccent,
    Colors.purple,
    Colors.green,
    Colors.blue,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        title: Center(
          child: Text(
            "dessiner",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          GestureDetector(
            onPanStart: (details) {
              setState(() {
                drawingPoints.add(
                  DrawingPoint(
                    details.localPosition,
                    Paint()
                      ..color = selectedColor
                      ..isAntiAlias = true
                      ..strokeWidth = strokeWidth
                      ..strokeCap = StrokeCap.round,
                  ),
                );
              });
            },
            onPanUpdate: (details) {
              setState(() {
                drawingPoints.add(
                  DrawingPoint(
                    details.localPosition,
                    Paint()
                      ..color = selectedColor
                      ..isAntiAlias = true
                      ..strokeWidth = strokeWidth
                      ..strokeCap = StrokeCap.round,
                  ),
                );
              });
            },
            onPanEnd: (details) {
              setState(() {
                drawingPoints.add(DrawingPoint.endOfDrawing());
              });
            },
            child: CustomPaint(
              painter: _DrawingPainter(drawingPoints),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
          Positioned(
            top: 40,
            right: 30,
            child: Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () => setState(() {
                    drawingPoints = [];
                  }),
                  icon: Icon(Icons.clear),
                  label: Text("effacer"),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.grey[200],
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
                colors.length, (index) => _buildColorChoose(colors[index])),
          ),
        ),
      ),
    );
  }

  Widget _buildColorChoose(Color color) {
    bool isSelected = selectedColor == color;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedColor = color;
          // Ajouter un marqueur spécial pour indiquer le changement de couleur
          drawingPoints.add(DrawingPoint.colorChange(color));
        });
      },
      child: Container(
        height: isSelected ? 50 : 40,
        width: isSelected ? 50 : 40,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: isSelected ? Border.all(color: Colors.white, width: 3) : null,
        ),
      ),
    );
  }
}

class _DrawingPainter extends CustomPainter {
  List<DrawingPoint> drawingPoints = [];

  _DrawingPainter(this.drawingPoints);

  @override
  void paint(Canvas canvas, Size size) {
    List<Offset> currentSegment = [];
    Color currentColor = Colors.black; // Couleur par défaut

    for (int i = 0; i < drawingPoints.length; i++) {
      DrawingPoint point = drawingPoints[i];

      if (point.isEndOfDrawing) {
        if (currentSegment.isNotEmpty) {
          _drawSegment(canvas, currentSegment, currentColor);
          currentSegment.clear();
        }
      } else if (point.isColorChange) {
        // Mettre à jour la couleur actuelle
        currentColor = point.paint.color;
      } else {
        currentSegment.add(point.offset);
      }
    }

    if (currentSegment.isNotEmpty) {
      _drawSegment(canvas, currentSegment, currentColor);
    }
  }

  void _drawSegment(
      Canvas canvas, List<Offset> segment, Color color) {
    if (segment.length > 1) {
      Paint paint = Paint()
        ..color = color
        ..isAntiAlias = true
        ..strokeWidth = 5
        ..strokeCap = StrokeCap.round;

      canvas.drawPoints(PointMode.polygon, segment, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}


class DrawingPoint {
  Offset offset;
  Paint paint;
  bool isEndOfDrawing;
  bool isColorChange;

  DrawingPoint(this.offset, this.paint,
      {this.isEndOfDrawing = false, this.isColorChange = false});

  factory DrawingPoint.endOfDrawing() {
    return DrawingPoint(Offset.zero, Paint(), isEndOfDrawing: true);
  }

  factory DrawingPoint.colorChange(Color color) {
    return DrawingPoint(Offset.zero, Paint()
      ..color = color
      ..isAntiAlias = true
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round,
        isColorChange: true);
  }
}