<!-- PROJECT HEADER -->
<h1 align="center">🤖 Transformer Robot System</h1>
<p align="center">
  <b>A Composition & Encapsulation Demo in Dart</b><br>
  <sub>Object-Oriented Programming — Group Task 5</sub>
</p>

<p align="center">
  <!-- BADGES -->
  <img src="https://img.shields.io/badge/language-Dart-blue.svg" alt="language badge">
  <img src="https://img.shields.io/badge/project-OOP%20Composition-success.svg" alt="project badge">
  <img src="https://img.shields.io/badge/status-Active-brightgreen.svg" alt="status badge">
  <img src="https://img.shields.io/badge/version-1.0.0-informational.svg" alt="version badge">
</p>

---

## 🧠 Project Overview
This project demonstrates *Object-Oriented Programming (OOP)* principles — specifically *Composition* and *Encapsulation* — through a themed Transformer Robot System.  

The main container class Transformer composes three subsystems:
- WeaponSystem
- ArmorSystem
- EngineSystem

Each subsystem is defined in its own Dart file and encapsulates its properties and behaviors.  
The container class accepts these parts through *constructor injection* and delegates actions via its own methods.

---

## ⚙️ Description

### 🔹 Container Class — Transformer
- Demonstrates *composition* using constructor injection  
- Delegates actions to its subsystems  
- Contains two primary methods:
  - engageBattleMode() — activates all subsystems for battle
  - initiateTransformation() — performs the robot’s transformation sequence

### 🔹 Part Classes
Each part class uses *encapsulation* via private fields and getters/setters:
- *WeaponSystem* — Handles firing and reloading  
- *ArmorSystem* — Manages shield activation and repairs  
- *EngineSystem* — Controls boosting and transformation  

---

## 🖥️ How to Run

### Prerequisites
- Install the latest [Dart SDK](https://dart.dev/get-dart)

### Run Command
From your project root:
```bash
dart run lib/main.dart