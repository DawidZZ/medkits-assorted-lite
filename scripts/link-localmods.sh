set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GAME_DIR="${1:-$HOME/.local/share/Steam/steamapps/common/Barotrauma}"
PACKAGES=(MedkitsAssortedLite)

if [[ ! -d "$GAME_DIR/LocalMods" ]]; then
  echo "$GAME_DIR/LocalMods not found — pass the game path as an argument." >&2
  exit 1
fi

for pkg in "${PACKAGES[@]}"; do
  target="$GAME_DIR/LocalMods/$pkg"
  if [[ -L "$target" ]]; then
    echo "Link already exists: $target -> $(readlink "$target")"
  elif [[ -e "$target" ]]; then
    echo "$target exists and is not a symlink — skipping." >&2
  else
    ln -s "$REPO_DIR/$pkg" "$target"
    echo "Created: $target -> $REPO_DIR/$pkg"
  fi
done
