// lib/main.dart
// Integration maintained by Member 1 (Leader)
// Demonstrates how to use the container class

import 'transformer.dart';
import 'weapon_system.dart';
import 'armor_system.dart';
import 'engine_system.dart';

void main() {
  // Step 1: Create the parts (by other members)
  var weapon = WeaponSystem(name: 'Plasma Cannon', power: 95);
  var armor = ArmorSystem(level: 8);
  var engine = EngineSystem(model: 'CyberDrive-Z', speed: 450);

  // Step 2: Create the container using constructor injection
  var transformer = Transformer(
    weaponSystem: weapon,
    armorSystem: armor,
    engineSystem: engine,
  );

  // Step 3: Demonstrate delegation (container methods)
  print('Optimum Pride: "AUTOBOTS, ROLL OUT!"');
  print('Engaging Battle Mode...\n');
  transformer.engageBattleMode();

  print('Optimum Pride: "ROBOTS IN DISGUISE. Urrgh-Urrgh-Ah-Ah"');
  print('Initiating Transformation...\n');
  transformer.initiateTransformation();
}