// https://api.flutter.dev/flutter/material/AnimatedIcon-class.html
import 'package:flutter/material.dart';

class AnimatedIconSample extends StatefulWidget {
  @override
  _AnimatedIconSampleState createState() => _AnimatedIconSampleState();
}

class _AnimatedIconSampleState extends State<AnimatedIconSample>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Icon')),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Column(
            children: [
              _buildAnimatedIconsCard(
                AnimatedIcons.add_event,
                AnimatedIcons.event_add,
                label1: "add_event",
                label2: "event_add",
              ),
              SizedBox(height: 10.0),
              _buildAnimatedIconsCard(
                AnimatedIcons.arrow_menu,
                AnimatedIcons.menu_arrow,
                label1: "arrow_menu",
                label2: "menu_arrow",
              ),
              SizedBox(height: 10.0),
              _buildAnimatedIconsCard(
                AnimatedIcons.close_menu,
                AnimatedIcons.menu_close,
                label1: "close_menu",
                label2: "menu_close",
              ),
              SizedBox(height: 10.0),
              _buildAnimatedIconsCard(
                AnimatedIcons.ellipsis_search,
                AnimatedIcons.search_ellipsis,
                label1: "ellipsis_search",
                label2: "search_ellipsis",
              ),
              SizedBox(height: 10.0),
              _buildAnimatedIconsCard(
                AnimatedIcons.home_menu,
                AnimatedIcons.menu_home,
                label1: "home_menu",
                label2: "menu_home",
              ),
              SizedBox(height: 10.0),
              _buildAnimatedIconsCard(
                AnimatedIcons.list_view,
                AnimatedIcons.view_list,
                label1: "list_view",
                label2: "view_list",
              ),
              SizedBox(height: 10.0),
              _buildAnimatedIconsCard(
                AnimatedIcons.play_pause,
                AnimatedIcons.pause_play,
                label1: "play_pause",
                label2: "pause_play",
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: () async {
          await _controller!.forward();
          await Future.delayed(Duration(seconds: 1));
          await _controller!.reverse();
        },
      ),
    );
  }

  Widget _buildAnimatedIconWidget(AnimatedIconData icon,
      {@required String? label}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedIcon(
          icon: icon,
          progress: _controller!,
        ),
        Text(label!)
      ],
    );
  }

  Widget _buildAnimatedIconsCard(AnimatedIconData icon1, AnimatedIconData icon2,
      {@required String? label1, @required String? label2}) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildAnimatedIconWidget(
            icon1,
            label: label1,
          ),
          SizedBox(width: 40),
          _buildAnimatedIconWidget(
            icon2,
            label: label2,
          ),
        ],
      ),
    );
  }
}
