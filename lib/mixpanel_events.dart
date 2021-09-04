enum MixPanelEvent {
  SELECT_STATE,
}

extension MixPanelEventValue on MixPanelEvent {
  String toValue() => this.toString().split('.').last;
}
