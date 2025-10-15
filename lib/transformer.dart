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
    print('[Transformer] Engaging BATTLE MODE...');
    print('[Transformer] Delegating -> engineSystem.boost()');
    engineSystem.boost();

    print('[Transformer] Delegating -> armorSystem.activateShield()');
    armorSystem.activateShield();

    print('[Transformer] Delegating -> weaponSystem.fire()');
    weaponSystem.fire();

    print('[Transformer] Battle mode sequence complete.\n');
  }

  // Delegated action 2
  void initiateTransformation() {
    print('[Transformer] Initiating transformation sequence...');
    print('[Transformer] Delegating -> engineSystem.transform()');
    engineSystem.transform();

    print('[Transformer] Delegating -> weaponSystem.reload()');
    weaponSystem.reload();

    print('[Transformer] Delegating -> armorSystem.repair()');
    armorSystem.repair();

    print('[Transformer] Transformation complete.\n');
  }
}