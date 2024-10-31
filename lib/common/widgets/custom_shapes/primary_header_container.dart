import 'package:flutter/material.dart';
import 'package:store_app/common/widgets/custom_shapes/curved_edges_widget.dart';
import 'package:store_app/common/widgets/custom_shapes/custom_circular_container.dart';
import 'package:store_app/utils/constants/colors.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurveEdgeWidget(
      child: Container(
        color: AppColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(top:-150, right:-250, child: CustomCircularContainer(backgroundColor: AppColors.textWhite.withOpacity(0.1))),
              Positioned(top:100, right:-300, child: CustomCircularContainer(backgroundColor: AppColors.textWhite.withOpacity(0.1))),
            ],
          ),
        ),
      ),
    );
  }
}
