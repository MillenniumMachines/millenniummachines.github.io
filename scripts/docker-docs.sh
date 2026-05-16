#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
IMAGE="${DOCKER_MKDOCS_IMAGE:-millenniummachines-mkdocs:latest}"

usage() {
  cat <<'EOF'
Usage: docker-docs.sh <command> [args]

Commands:
  build-image    Build the MkDocs Docker image (docker build).
  serve          Run mkdocs serve on http://localhost:8000
  validate       Run mkdocs build in the container (e.g. validate --strict)

Environment:
  DOCKER_MKDOCS_IMAGE   Image tag (default: millenniummachines-mkdocs:latest)

Run from anywhere; paths are resolved from the repository root.
EOF
}

main() {
  local cmd="${1:-}"
  if [[ -z "$cmd" || "$cmd" == "-h" || "$cmd" == "--help" ]]; then
    usage
    [[ -n "$cmd" ]] || exit 1
    exit 0
  fi
  shift

  case "$cmd" in
    build-image)
      docker build -t "$IMAGE" "$ROOT"
      ;;
    serve)
      docker run --rm -p 8000:8000 -v "$ROOT:/workspace" -w /workspace "$IMAGE"
      ;;
    validate)
      docker run --rm -v "$ROOT:/workspace" -w /workspace "$IMAGE" mkdocs build "$@"
      ;;
    *)
      echo "Unknown command: $cmd" >&2
      usage >&2
      exit 1
      ;;
  esac
}

main "$@"
