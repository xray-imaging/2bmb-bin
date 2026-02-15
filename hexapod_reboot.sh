#!/usr/bin/env bash
set -euo pipefail

export PATH="$HOME/bin:$PATH"

# Find conda base robustly (works even if conda isn't already initialized)
if command -v conda >/dev/null 2>&1; then
  CONDA_BASE="$(conda info --base)"
else
  # Common installs; add more here if needed
  for c in "$HOME/miniconda3" "$HOME/miniforge3" "$HOME/anaconda3" "/opt/conda"; do
    if [[ -x "$c/bin/conda" ]]; then
      export PATH="$c/bin:$PATH"
      CONDA_BASE="$c"
      break
    fi
  done
fi

if [[ -z "${CONDA_BASE:-}" || ! -f "$CONDA_BASE/etc/profile.d/conda.sh" ]]; then
  echo "ERROR: Could not locate conda.sh. Try: which conda; conda info --base" >&2
  exit 1
fi

# Initialize conda for this non-interactive shell
source "$CONDA_BASE/etc/profile.d/conda.sh"
conda activate pdu

exec python "$HOME/bin/hexapod_reboot.py" "$@"
