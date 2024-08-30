import 'package:flutter/material.dart';
import 'package:three_d_app/feature/home/char_detail_mixin.dart';
import 'package:three_d_app/utils/enums/chararter.dart';
import 'package:three_d_app/utils/widgets/animation_object.dart';
import 'package:three_d_app/utils/widgets/custom_dropdown_form_field.dart';
import 'package:three_d_app/utils/widgets/custom_floating_action_button.dart';

class CharDetailView extends StatefulWidget {
  const CharDetailView({super.key});

  @override
  State<CharDetailView> createState() => _CharDetailViewState();
}

class _CharDetailViewState extends State<CharDetailView> with CharDetailMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0).copyWith(bottom: 50),
        child: Column(
          children: [
            
             Flexible(
              flex: 1,
               child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomFloatingActionButton(
                        onPress: turnLeft, icon: Icons.swipe_left_rounded),
                    const SizedBox(
                      width: 30,
                    ),
                    Flexible(
                      child: CustomDropdownFormField(
                        options: availableAnimations,
                        controller: controller,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    CustomFloatingActionButton(
                        onPress: turnRight, icon: Icons.swipe_right_rounded),
                  ],
                ),
             ),
           
            Flexible(
              flex: 9,
              child: AnimationObject(
                src: Character.boony.path,
                animationName: '',
                autoPlay: autoPlay,
                controller: controller,
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomFloatingActionButton(
                        onPress: changeCameraControl,
                        icon: Icons.threed_rotation),
                    CustomFloatingActionButton(
                        onPress: center, icon: Icons.center_focus_strong),
                  ],
                ),
            ),
           
          ],
        ),
      ),
    );
  }
}
