# Cabaret Club Sim

A Godot 4 + GDScript management simulation inspired by the Cabaret Club Czar mini-game from Yakuza 0.

## Concept

Run a nightlife club. Recruit and manage hostesses with stats (Talk, Party, Love, Skill, HP, appearance traits). Match them to customers in real time for maximum money and fans. Compete against rival clubs.

This is an original "inspired by" project with no direct assets or characters from the Yakuza series.

## Setup

1. Install [Godot 4.3+](https://godotengine.org/download)
2. Clone this repo
3. Open the project folder in Godot
4. The main scene is `scenes/main.tscn`

## Project Structure

```
cabaret-club-sim/
├── project.godot
├── README.md
├── .gitignore
├── scenes/
│   └── main.tscn
└── scripts/
    ├── ClubManager.gd
    ├── Hostess.gd
    └── Customer.gd
```

## Core Systems (planned)

- Hostess roster with stats, mood, and HP
- Customer matching based on preferences
- Shift simulation with timed assignments
- Rival battles
- Progression and makeovers

## Getting Started with Development

Open `scenes/main.tscn` and `scripts/ClubManager.gd` to begin building the core loop.

Feel free to expand with AI-generated portraits, UI, and additional systems.
