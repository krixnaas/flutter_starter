import 'package:flutter/material.dart';
import 'package:store_app/common/widgets/custom_shapes/custom_curved_edges.dart';

class CurveEdgeWidget extends StatelessWidget {
  const CurveEdgeWidget({
    super.key, this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child:  child,
    );
  }
}
