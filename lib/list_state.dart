import 'package:flutter/material.dart';
import 'package:mixpanel_demo/mixpanel_events.dart';
import 'package:mixpanel_demo/mixpanel_helper.dart';

// Listagem de estados
const STATES = ['SP', 'MG', 'RJ', 'BA', 'PR'];

class ListState extends StatefulWidget {
  const ListState({Key? key}) : super(key: key);

  @override
  _ListStateState createState() => _ListStateState();
}

class _ListStateState extends State<ListState> {
  @override
  void initState() {
    // Iniciando o MixPanel
    MixPanelHelper.init('<TOKEN>');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de estados')),
      body: ListView(
        children: STATES
            .map((state) => ListTile(
                title: Text(state),
                onTap: () {
                  // Enviando um evento
                  MixPanelHelper.track(MixPanelEvent.SELECT_STATE.toValue(),
                      properties: {
                        'state': state,
                      });
                }))
            .toList(),
      ),
    );
  }
}
