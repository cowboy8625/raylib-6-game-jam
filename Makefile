SHELL := /bin/bash
# ---- Config ----
TARGET      := x86_64-linux
SRC         := src/main.cb
BUILD_DIR   := bin
OUT         := $(BUILD_DIR)/main

RAYLIB_PATH := /opt/raylib/release/libs/linux

LDLIBS := -L$(RAYLIB_PATH) \
          -lraylib -lGL -lm -lpthread -ldl -lrt -lX11

# ---- Default ----
all: $(OUT)

# ---- Build ----
$(OUT): $(SRC) | $(BUILD_DIR)
	cflat --target=$(TARGET) \
	      --link "$(LDLIBS) -o $@" \
	      $<

# Ensure build dir exists (order-only dependency)
$(BUILD_DIR):
	mkdir -p $@

# ---- Run ----
run: $(OUT)
	$<

# ---- Run Web ----
run-web:
	./web/build.sh $(SRC) && python3 -m http.server -d "/home/cowboy/Documents/Repos/c-flat-lang/raylib-6-game-jam/bin/web/main" 8000

# ---- Rebuild Web ----
rebuild-web:
	./scripts/setup-web-toolchain.sh && \
	. web/vendor/emsdk/emsdk_env.sh && \
	./web/build-raylib-host.sh

# ---- Clean ----
clean:
	rm -rf $(BUILD_DIR)

.PHONY: all run clean
