import 'package:bloc_app/bloc/slider/slider_bloc.dart';
import 'package:bloc_app/bloc/slider/slider_event.dart';
import 'package:bloc_app/bloc/slider/slider_states.dart';
import 'package:bloc_app/bloc/switch/switch_bloc.dart';
import 'package:bloc_app/bloc/switch/switch_event.dart';
import 'package:bloc_app/bloc/switch/switch_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchExampleScreen extends StatefulWidget {
  const SwitchExampleScreen({super.key});

  @override
  State<SwitchExampleScreen> createState() => _SwitchExampleScreenState();
}

class _SwitchExampleScreenState extends State<SwitchExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text('Notifications'),
                BlocBuilder<SwitchBloc, SwitchStates>(
                  buildWhen: (previous, current) => previous.isSwitch != current.isSwitch,
                  builder: (context, state) {
                    print('Switch');
                    return Switch(
                      value: state.isSwitch,
                      onChanged: (value) {
                        context.read<SwitchBloc>().add(EnableorDisableNotification());
                      },
                    );
                  },
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 200,
              color: Colors.red.withOpacity(.2),
            ),
            const SizedBox(
              height: 30,
            ),
            BlocBuilder<SliderBloc, SliderStates>(
              builder: (context, state) {
                print('Slider');
                return Slider(
                  value: state.val,
                  onChanged: (value) {
                    // print(value);
                    context.read<SliderBloc>().add(SlidetheSliderEvents(slider: value));
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
