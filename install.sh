#!/bin/bash
# Installer for ExactMouse Redux (unofficial; © Maximilian Dahl, all rights reserved).
#
#   curl -fsSL https://raw.githubusercontent.com/iamadesignerusually/ExactMouse-Redux/main/install.sh | bash
#
# Options (with "| bash -s -- <option>"):
#   --version X.Y.Z   install a specific release instead of the latest
#   --uninstall       remove the app (and with --purge also its settings)
#
# Environment: INSTALL_DIR (default /Applications), NO_LAUNCH=1 (don't quit/start the app)
set -euo pipefail

REPO="iamadesignerusually/ExactMouse-Redux"
NAME="ExactMouse Redux"
BIN="ExactMouseRedux"
BUNDLE_ID="io.github.iamadesignerusually.ExactMouseRedux"
INSTALL_DIR="${INSTALL_DIR:-/Applications}"
VERSION=""
UNINSTALL=0
PURGE=0

while [ $# -gt 0 ]; do
  case "$1" in
    --version) VERSION="${2#v}"; shift ;;
    --uninstall) UNINSTALL=1 ;;
    --purge) PURGE=1 ;;
    *) echo "unknown option: $1" >&2; exit 1 ;;
  esac
  shift
done

say() { printf '\033[1m==>\033[0m %s\n' "$*"; }
fail() { printf '\033[31mError:\033[0m %s\n' "$*" >&2; exit 1; }

[ "$(uname -s)" = "Darwin" ] || fail "this app only runs on macOS"
OS_VERSION=$(sw_vers -productVersion)
IFS=. read -r MAJOR MINOR _ <<< "$OS_VERSION"
if [ "${MAJOR:-0}" -lt 14 ] || { [ "$MAJOR" -eq 14 ] && [ "${MINOR:-0}" -lt 4 ]; }; then
  fail "macOS 14.4 or newer is required (you have $OS_VERSION)"
fi

APP_PATH="$INSTALL_DIR/$NAME.app"
# Name used up to version 2.10 (renamed in 3.0)
OLD_APP_PATH="$INSTALL_DIR/SteelSeries ExactMouse Tool Redux.app"

if [ "$UNINSTALL" = 1 ]; then
  say "Quitting and removing $NAME"
  pkill -x "$BIN" 2>/dev/null || true
  rm -rf "$APP_PATH" "$OLD_APP_PATH"
  if [ "$PURGE" = 1 ]; then
    defaults delete "$BUNDLE_ID" 2>/dev/null || true
    rm -rf "$HOME/Library/Application Support/ExactMouse Redux"
  fi
  say "Done. Mouse acceleration stays as it is until you change it in System Settings or restart."
  exit 0
fi

TMP=$(mktemp -d)
trap 'rm -rf "$TMP"' EXIT

if [ -z "$VERSION" ]; then
  say "Looking up the latest release"
  VERSION=$(curl -fsSL "https://api.github.com/repos/$REPO/releases/latest" \
    | sed -n 's/.*"tag_name": *"v\{0,1\}\([^"]*\)".*/\1/p' | head -1)
  [ -n "$VERSION" ] || fail "could not determine the latest release"
fi
BASE="https://github.com/$REPO/releases/download/v$VERSION"
ZIP="ExactMouseRedux-$VERSION.zip"
say "Downloading version $VERSION"
curl -fsSL -o "$TMP/$ZIP" "$BASE/$ZIP" || fail "download failed: $BASE/$ZIP"
curl -fsSL -o "$TMP/SHA256SUMS.txt" "$BASE/SHA256SUMS.txt" || fail "checksum file missing"
say "Verifying checksum"
( cd "$TMP" && grep " $ZIP\$" SHA256SUMS.txt | shasum -a 256 -c - >/dev/null ) || fail "checksum mismatch – download corrupted"
ditto -x -k "$TMP/$ZIP" "$TMP/app"
NEW_APP="$TMP/app/$NAME.app"

[ -d "$NEW_APP" ] || fail "app bundle not found"
codesign --verify --strict "$NEW_APP" 2>/dev/null || fail "code signature of the downloaded app is invalid"

say "Installing to $INSTALL_DIR"
[ "${NO_LAUNCH:-0}" = 1 ] || pkill -x "$BIN" 2>/dev/null || true
mkdir -p "$INSTALL_DIR"
rm -rf "$APP_PATH" "$OLD_APP_PATH"
ditto "$NEW_APP" "$APP_PATH"

if [ "${NO_LAUNCH:-0}" != 1 ]; then
  say "Starting $NAME"
  open "$APP_PATH"
fi
cat <<MSG

  Installed: $APP_PATH
  The menu bar icon appears in the top right. Pick a mode there:
    Always On – acceleration always off (recommended for games)
    On        – acceleration off, steps back if you change System Settings
    Off       – normal macOS acceleration

  Uninstall: curl -fsSL https://raw.githubusercontent.com/$REPO/main/install.sh | bash -s -- --uninstall

MSG
