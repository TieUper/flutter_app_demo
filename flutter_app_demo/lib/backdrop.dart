import 'package:flutter/material.dart';

class Backdrop extends StatefulWidget {
  final Widget frontLayer;
  final AnimationController controller;

  const Backdrop(
      {Key key, @required this.frontLayer, @required this.controller})
      : assert(frontLayer != null),
        assert(controller != null);

  @override
  _BackdropState createState() => _BackdropState();
}

class _BackdropState extends State<Backdrop>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
//          PositionedTransition(rect: null, child: null)
        widget.frontLayer,
      ],
    );
  }
}
