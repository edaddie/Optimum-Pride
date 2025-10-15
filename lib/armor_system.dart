// Example: var armor = ArmorSystem(level: 8);

class ArmorSystem {
  int _level; // 1–10

  ArmorSystem({int level = 5}) : _level = level;

  int get level => _level;
  set level(int newLevel) {
    if (newLevel >= 1 && newLevel <= 10) {
      _level = newLevel;
    } else {
      print('[ArmorSystem] Invalid level: $newLevel');
    }
  }

  void activateShield() {
    print('[ArmorSystem] Activating defensive shield (Level $_level)!');
  }

  void repair() {
    print('[ArmorSystem] Self-repair mode engaged...');
  }
}
