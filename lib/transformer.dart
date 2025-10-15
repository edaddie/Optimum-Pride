import 'weapon_system.dart';
import 'armor_system.dart';
import 'engine_system.dart';

class Transformer {
  // Composition: parts as fields
  final WeaponSystem weaponSystem;
  final ArmorSystem armorSystem;
  final EngineSystem engineSystem;

  // Parameterized constructor with required parts (constructor injection)
  Transformer({
    required this.weaponSystem,
    required this.armorSystem,
    required this.engineSystem,
  });

  // Delegated action 1
  void engageBattleMode() {
    print('Optimum Pride: Engaging BATTLE MODE...');
    print('Optimum Pride: Delegating -> engineSystem.boost()');
    engineSystem.boost();

    print('Optimum Pride: Delegating -> armorSystem.activateShield()');
    armorSystem.activateShield();

    print('Optimum Pride: Delegating -> weaponSystem.fire()');
    weaponSystem.fire();

    print('Optimum Pride: Battle mode sequence complete.\n');
  }

  // Delegated action 2
  void initiateTransformation() {
    print('Optimum Pride: Initiating transformation sequence...');
    print('Optimum Pride: Delegating -> engineSystem.transform()');
    engineSystem.transform();

    print('Optimum Pride: Delegating -> weaponSystem.reload()');
    weaponSystem.reload();

    print('Optimum Pride: Delegating -> armorSystem.repair()');
    armorSystem.repair();

    print('Optimum Pride: Transformation complete.\n');
  }
}