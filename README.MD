default.nix files import all of the .nix files in thier directory.
├── flake.lock
├── flake.nix
├── home
│   ├── core.nix
│   ├── programs # home manager programs
│   │   ├── browsers.nix
│   │   ├── common.nix # generic home manager program list
│   │   ├── default.nix# import ./*.nix
│   │   ├── git.nix
│   │   ├── media.nix
│   │   └── xdg.nix
│   └── shell
│       ├── common.nix
│       ├── default.nix
│       ├── nushell
│       │   ├── config.nu
│       │   ├── default.nix
│       │   └── env.nu
│       ├── starship.nix
│       └── terminals.nix
├── hosts
│   └── framework
│       ├── default.nix # new configuration.nix imports modules with system apps, desktop env and hardware config
│       └── hardware-configuration.nix
├── modules
│   ├── kde.nix
│   └── system.nix #system apps, network setting
├── README.MD
└── users
    └── scott
        ├── home.nix #imports ../../home/core.nix and ../../home/*/default.nix
        └── nixos.nix #ssh public keys
