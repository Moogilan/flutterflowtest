// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom widget code
class PicInteractiveViewer extends StatefulWidget {
  const PicInteractiveViewer(
      {Key key,
      this.width,
      this.height,
      this.photo,
      this.minScale = 0.1,
      this.maxScale = 5.0,
      this.borderRadius = 100,
      this.panEnabled = true,
      this.scaleEnabled = true,
      this.initTransformation})
      : super(key: key);
  final List<double> initTransformation;
  final double width;
  final double height;
  final String photo;
  final double minScale;
  final double maxScale;
  final double borderRadius;
  final bool panEnabled;
  final bool scaleEnabled;
  @override
  _PicInteractiveViewerState createState() => _PicInteractiveViewerState();
}

class _PicInteractiveViewerState extends State<PicInteractiveViewer> {
  Matrix4 transformation;
  List<double> transformList;

  TransformationController controller = TransformationController();

  @override
  Widget build(BuildContext context) {
    if (widget.initTransformation.isNotEmpty &&
        widget.initTransformation.length == 16) {
      //controller.value = Matrix4(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
      controller = TransformationController(
          Matrix4.fromFloat64List(widget.initTransformation));
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(widget.borderRadius),
      child: InteractiveViewer(
          child: Image.network(widget.photo, fit: BoxFit.fitWidth),
          maxScale: widget.maxScale,
          minScale: widget.minScale,
          panEnabled: widget.panEnabled,
          scaleEnabled: widget.scaleEnabled,
          transformationController: controller,
          onInteractionEnd: (ScaleEndDetails endDetails) {
            FFAppState().photoTransformation1 = controller.value.storage;
            setState(() {
              transformation = controller.value;
              transformList = controller.value.storage;
            });
          }),
    );
  }
}
