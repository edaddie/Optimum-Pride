// Example: var weapon = WeaponSystem(name: 'Plasma Cannon', power: 95);

class WeaponSystem {
  // Encapsulated properties
  String _name;
  int _power; // 0–100

  // Parameterized constructor
  WeaponSystem({String name = 'Cannon Blaster Silonga', int power = 90})
      : _name = name,
        _power = power;

  // Getters and setters
  String get name => _name;
  int get power => _power;

  set power(int newPower) {
    if (newPower >= 0 && newPower <= 100) {
      _power = newPower;
    } else {
      print('[WeaponSystem] Invalid power: $newPower');
    }
  }

  // Methods
  void fire() {
    print('[$_name] [WeaponSystem] Firing at full power. Pew! Pew! Pew! ($_power%)!');
  }

  void reload() {
    print('[$_name] [WeaponSystem] Reloading energy cells...');
  }
}
