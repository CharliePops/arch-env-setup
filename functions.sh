start_tmux() {
  # Just start tmux automatically
  if command -v tmux >/dev/null 2>&1 && [ -z "$TMUX" ]; then
    tmux attach-session -t default || tmux new-session -s default
  fi
}