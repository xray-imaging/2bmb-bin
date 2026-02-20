#!/usr/bin/env bash

TAB_NAME="DMagic"
REMOTE_USER="2bmb"
REMOTE_HOST="arcturus"
CONDA_ENV="dm"

gnome-terminal --tab --title="$TAB_NAME" --command "bash -i -c '
ssh -t ${REMOTE_USER}@${REMOTE_HOST} bash -lc '\''
  PREFIXES=(\"2bmb:TomoScan:\" \"2bmb:TomoScanStream:\" \"2bmb:TomoScanFPGA:\")
  PROBE_SUFFIX=\"UserInfoUpdate\"
  export EPICS_CA_CONN_TMO=0.2
  export EPICS_CA_AUTO_ADDR_LIST=YES

  prefix=\"\"
  for p in \"\${PREFIXES[@]}\"; do
    pv=\"\${p}\${PROBE_SUFFIX}\"
    if caget -t -w 0.2 \"\$pv\" >/dev/null 2>&1; then
      prefix=\"\$p\"
      break
    fi
  done

  if [ -z \"\$prefix\" ]; then
    echo \"ERROR: No TomoScan IOC responding (tried: \${PREFIXES[*]}).\" >&2
    exec bash -i
  fi

  echo \"Using tomoscan prefix: \$prefix\"
  conda run -n ${CONDA_ENV} dmagic tag --tomoscan-prefix \"\$prefix\"
  exec bash -i
'\''

exec bash -i
'"
