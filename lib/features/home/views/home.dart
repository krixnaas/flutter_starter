import 'package:flutter/material.dart';
import 'package:store_app/common/widgets/custom_shapes/curved_edges_widget.dart';
import 'package:store_app/common/widgets/custom_shapes/custom_circular_container.dart';
import 'package:store_app/common/widgets/custom_shapes/custom_curved_edges.dart';
import 'package:store_app/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:store_app/utils/constants/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
