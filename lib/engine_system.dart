// Example: var engine = EngineSystem(model: 'CyberDrive-Z', speed: 450);

class EngineSystem {
  String _model;
  int _speed; // km/h

  EngineSystem({String model = 'CyberDrive-X', int speed = 300})
      : _model = model,
        _speed = speed;

  String get model => _model;
  int get speed => _speed;

  set speed(int newSpeed) {
    if (newSpeed > 0) {
      _speed = newSpeed;
    } else {
      print('[EngineSystem] Invalid speed: $newSpeed');
    }
  }

  void transform() {
    print('[$_model] [EngineSystem] Transformation sequence initiated!');
  }

  void boost() {
    print('[$_model] [EngineSystem] Boosting speed to $_speed km/h!');
  }

  void shutdown() {
    print('[$_model] [EngineSystem] Powering down engines...');
  }
}
