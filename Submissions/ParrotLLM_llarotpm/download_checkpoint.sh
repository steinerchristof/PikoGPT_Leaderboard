#!/usr/bin/env bash
# Download the trained ParrotLLM checkpoint into runs/.
#
# The checkpoint is hosted as a GitHub Release asset on the submission
# fork because GitHub does not allow Git LFS uploads from public forks.
#
# Run from inside Submissions/ParrotLLM/.

set -e
URL="https://github.com/steinerchristof/PikoGPT_Leaderboard/releases/download/parrotllm-may05/final_step_0000877_epoch_00_valloss_2p4576.pt"
DEST="runs/final_step_0000877_epoch_00_valloss_2p4576.pt"

mkdir -p runs
echo "downloading to $DEST..."
curl -fL "$URL" -o "$DEST"
ls -lh "$DEST"
