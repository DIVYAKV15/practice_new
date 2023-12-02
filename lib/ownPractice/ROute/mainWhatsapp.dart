import 'package:flutter/material.dart';

import 'listWithRoute.dart';
void main()
{
  runApp(MaterialApp(home:WhatsappMain()));
}
class WhatsappMain extends StatelessWidget {
  //const WhatsappMain({super.key});

  @override
  Widget build(BuildContext context) {
    return WhatsAppChat();
  }
}
