start_tmux() {
  if command -v tmux >/dev/null 2>&1 && [ -z "$TMUX" ]; then
    tmux attach-session -t default || tmux new-session -s default
  fi
}

mkcd() {
  mkdir -p "$1"
  cd "$1"
}