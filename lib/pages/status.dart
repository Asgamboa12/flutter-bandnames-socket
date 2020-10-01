import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:band_names/services/socket_service.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final socketService = Provider.of<SocketService>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ServerStatus: ${socketService.serverStatus}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          socketService.emit(
            'emitir-mensaje',
            {'nombre': 'Flutter', 'mensaje': 'Hola desde flutter'},
          );
        },
        child: Icon(Icons.message),
      ),
    );
  }
}
