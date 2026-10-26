#!/usr/bin/env bash
set -u
DIR="$(cd "$(dirname "$0")" && pwd)"
CYAN=$'\033[1;36m'; PURPLE=$'\033[1;35m'; GREEN=$'\033[1;32m'; YELLOW=$'\033[1;33m'; RED=$'\033[1;31m'; DIM=$'\033[2m'; RESET=$'\033[0m'

pause() {
  printf "\n%sPulsa una tecla para continuar · q para salir%s" "$DIM" "$RESET"
  IFS= read -rsn1 key
  printf "\n"
  [[ "$key" == "q" || "$key" == "Q" ]] && exit 0
}

header() {
  clear
  printf "%sMEASURECAMP MADRID 2026%s\n" "$CYAN" "$RESET"
  printf "%sREPRODUCCIÓN SEGURA · DATOS FICTICIOS · SIN ACCESO A PRODUCCIÓN%s\n\n" "$DIM" "$RESET"
}

header
printf "%s01 · PETICIÓN%s\n\n" "$YELLOW" "$RESET"
cat "$DIR/ticket-ficticio.md"
pause

header
printf "%s02 · ROUTER%s\n\n" "$PURPLE" "$RESET"
printf "Analizando intención, riesgo y especialista adecuado…\n\n"
printf "  workflow:    %stracking_triage%s\n" "$CYAN" "$RESET"
printf "  agent:       %stracking-ticket-triager%s\n" "$PURPLE" "$RESET"
printf "  risk:        low\n"
printf "  mutation:    no\n"
printf "  confidence:  0.94\n\n"
printf "%sEl router elige del catálogo. No inventa un agente nuevo.%s\n" "$DIM" "$RESET"
pause

header
printf "%s03 · TRACKING TICKET TRIAGER%s\n\n" "$CYAN" "$RESET"
cat "$DIR/01-triage-output.md"
pause

header
printf "%s04 · HANDOFF A GTM ADMIN%s\n\n" "$PURPLE" "$RESET"
printf "agent:  %sGTM Admin%s\n" "$PURPLE" "$RESET"
printf "skills: %sgtm-cli · gtm-implementation · atl-cli%s\n" "$CYAN" "$RESET"
printf "tools:  GTM CLI\n"
printf "memory: patrones y decisiones reutilizables\n"
printf "limit:  %sno publicar sin aprobación humana%s\n" "$YELLOW" "$RESET"
pause

header
printf "%s05 · IMPLEMENTACIÓN EN EL SANDBOX%s\n\n" "$GREEN" "$RESET"
cat "$DIR/02-gtm-admin-output.md"
pause

header
printf "%s06 · EL GIRO%s\n\n" "$RED" "$RESET"
cat "$DIR/03-comentario-y-respuesta.md"
pause

header
printf "%s07 · IDEA CLAVE%s\n\n" "$YELLOW" "$RESET"
printf "%sAutomatiza el trabajo. No delegues la responsabilidad.%s\n\n" "$YELLOW" "$RESET"
printf "Agentes     → quién hace el trabajo\n"
printf "Skills      → cómo sabe hacerlo\n"
printf "Herramientas→ dónde puede actuar\n"
printf "Memoria     → qué contexto conserva\n"
printf "Humano      → quién responde por la decisión\n\n"
printf "%sFin de la reproducción.%s\n" "$GREEN" "$RESET"
