#### Linux Build

Currently the compiler does not support all the needed features to run natively on linux 😭.

- Passing structs larger then 16bytes is missing.

#### Web Build

**Linux/Mac Build**

```shell
# Rust Compiler will need to be installed
# c-flat compiler setup
git clone https://github.com/c-flat-lang/c-flat.git
cd c-flat
./install.sh # optional but not needed --features wasm-runtime,debug

# project setup
git clone https://github.com/cowboy8625/raylib-6-game-jam.git
cd raylib-6-game-jam
./scripts/setup-web-toolchain.sh
source web/vendor/emsdk/emsdk_env.sh
web/build-raylib-host.sh

# dev cycle
make run-web
```

## $(Game Title)

![$(Game Title)](screenshots/screenshot000.png "$(Game Title)")

### Description

$(Your Game Description)

### Features

- $(Game Feature 01)
- $(Game Feature 02)
- $(Game Feature 03)

### Controls

Keyboard:

- $(Game Control 01)
- $(Game Control 02)
- $(Game Control 03)

### Screenshots

_TODO: Show your game to the world, animated GIFs recommended!._

### Developers

- $(cowboy8625) - Dev, Art, Music

### Links

- YouTube Gameplay: $(YouTube Link)
- itch.io Release: $(itch.io Game Page)
- Steam Release: $(Steam Game Page)

### License

This project sources are licensed under an unmodified zlib/libpng license, which is an OSI-certified, BSD-like license that allows static linking with closed source software. Check [LICENSE](LICENSE) for further details.

_Copyright (c) 2026 cowboy8625_
