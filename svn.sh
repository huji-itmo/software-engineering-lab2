#!/bin/bash

REPO_NAME="romboooo^opi-lab.lab2"
WORK_DIR="/Users/rom4ikk/Desktop/учеба/2_курс/2_сем/опи"
COMMIT_DIR="$(dirname "$0")"  
LOG_FILE="$WORK_DIR/svn_script.log"

REPO_PATH="$WORK_DIR/$REPO_NAME"
WORKING_COPY="$WORK_DIR/software-engineering-lab2"
URL="file://$REPO_PATH"

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
RESET="\033[0m"

log() {
  echo -e "${GREEN}[LOG]${RESET} $1" | tee -a "$LOG_FILE"
}

error() {
  echo -e "${RED}[ОШИБКА]${RESET} $1" | tee -a "$LOG_FILE"
  exit 1
}

safe_copy() {
  local src="$1"
  local step="$2"
  if [ ! -d "$src" ]; then
    error "Папка $src не найдена (шаг: $step)"
  fi
  log "Копирование файлов для $step"
  cp -rf "$src"/* .
}

check_working_copy() {
  if [ ! -d "$WORKING_COPY/.svn" ]; then
    error "Рабочая копия $WORKING_COPY не инициализирована"
  fi
}

safe_switch() {
  local target="$1"
  log "Переключение на $target"
  svn switch "$target" || error "Не удалось переключиться на $target"
}

safe_merge() {
  local source="$1"
  log "Попытка слияния $source"
  
  if ! svn merge "$source" 2>>"$LOG_FILE"; then
    warn "Слияние $source завершилось с ошибкой"
    return 1
  fi

  if ! svn resolve --accept theirs-full -R . 2>>"$LOG_FILE"; then
    warn "Не удалось разрешить конфликты для $source. Откат изменений..."
    svn revert -R . &>/dev/null
    return 1
  fi

  return 0
}

log "=== ИНИЦИАЛИЗАЦИЯ ==="
cd "$WORKING_COPY" || error "Не удалось перейти в $WORKING_COPY"

commit_step() {
  local commit="commit$1"
  local msg="$2"
  local user="${3:-huji}"
  
  log "=== $msg ($commit) ==="
  safe_copy "$COMMIT_DIR/$commit" "$msg"
  svn add --force . > /dev/null
  svn status | grep '^!' | awk '{print $2}' | xargs -r svn delete --force
  svn commit -m "$msg" --username "$user" || error "Ошибка коммита $msg"
}

branch_step() {
  local src="$1"
  local branch="$2"
  local msg="$3"
  local user="${4:-huji}"
  
  log "=== Работа с веткой $branch ==="
  
  if svn ls "$URL/branches/$branch" > /dev/null 2>&1; then
    log "Ветка $branch уже существует. Переключаемся..."
    safe_switch "$URL/branches/$branch"
  else
    log "Создаем новую ветку $branch"
    svn copy "$URL/$src" "$URL/branches/$branch" -m "$msg" --username "$user" || error "Ошибка создания $branch"
    safe_switch "$URL/branches/$branch"
  fi
}

merge_step() {
  local source="$1"
  local msg="$2"
  local user="${3:-huji}"
  
  log "=== Слияние $source ==="
  safe_merge "$URL/branches/$source"
  echo "здесь произошло слияние. конфликт был разрешён вручную
  "
}

commit_step 0 "r0"
branch_step "trunk" "branch1" "Создание branch1"

safe_switch "$URL/branches/branch1"
commit_step 1 "r1"

safe_switch "$URL/trunk"
commit_step 2 "r2"

safe_switch "$URL/branches/branch1"
commit_step 3 "r3"

branch_step "branches/branch1" "r4branch" "Создание r4branch"
commit_step 4 "r4"

branch_step "branches/r4branch" "r5branch" "Создание r5branch" "romboooo"
commit_step 5 "r5" "romboooo"

commit_step 6 "r6"

branch_step "branches/r5branch" "r7branch" "Создание r7branch"
commit_step 7 "r7"

safe_switch "$URL/trunk"
commit_step 8 "r8"

branch_step "trunk" "r9branch" "Создание r9branch"
commit_step 9 "r9"

safe_switch "$URL/branches/r7branch"
commit_step 10 "r10"

safe_switch "$URL/branches/r9branch"
commit_step 11 "r11"
commit_step 12 "r12"

safe_switch "$URL/branches/r7branch"
commit_step 13 "r13"

safe_switch "$URL/branches/branch1"
commit_step 14 "r14"

safe_switch "$URL/trunk"
commit_step 15 "r15"

safe_switch "$URL/branches/r4branch"
commit_step 16 "r16"

safe_switch "$URL/branches/r7branch"
commit_step 17 "r17"
commit_step 18 "r18"

branch_step "branches/r7branch" "r19branch" "Создание r19branch"
commit_step 19 "r19"

safe_switch "$URL/branches/branch1"
commit_step 20 "r20"

safe_switch "$URL/branches/r7branch"
commit_step 21 "r21"

commit_step 22 "r22" "romboooo"

safe_switch "$URL/branches/r5branch"
commit_step 23 "r23" "romboooo"

safe_switch "$URL/branches/r19branch"
commit_step 24 "r24"

merge_step "r19branch" "r25 (merge r19branch)"
safe_copy "$COMMIT_DIR/commit25" "r25"

safe_switch "$URL/branches/r9branch"
commit_step 26 "r26"

safe_switch "$URL/branches/branch1"
commit_step 27 "r27"

safe_switch "$URL/branches/r9branch"
commit_step 28 "r28"

safe_switch "$URL/branches/branch1"
commit_step 29 "r29"

merge_step "branch1" "r30 (merge branch1)"
safe_copy "$COMMIT_DIR/commit30" "r30"

safe_switch "$URL/branches/r4branch"
commit_step 31 "r31"

safe_switch "$URL/branches/r5branch"
commit_step 32 "r32" "romboooo"

safe_switch "$URL/branches/r7branch"
commit_step 33 "r33"

safe_switch "$URL/branches/r9branch"
commit_step 34 "r34"

safe_switch "$URL/branches/r5branch"
commit_step 35 "r35" "romboooo"

safe_switch "$URL/branches/r7branch"
commit_step 36 "r36"

branch_step "branches/r7branch" "r22branch" "Создание r22branch" "romboooo"
commit_step 37 "r37" "romboooo"

safe_switch "$URL/branches/r5branch"
commit_step 38 "r38" "romboooo"

safe_switch "$URL/branches/r4branch"
merge_step "r5branch" "r38-merge"

commit_step 39 "r39"

safe_switch "$URL/branches/r9branch"
merge_step "r4branch" "r40 (merge r4branch)"
safe_copy "$COMMIT_DIR/commit40" "r40"

safe_switch "$URL/trunk"
commit_step 41 "r41"

safe_switch "$URL/branches/r9branch"
commit_step 42 "r42"

safe_switch "$URL/branches/r7branch"
merge_step "r9branch" "r43 (merge r9branch)"
safe_copy "$COMMIT_DIR/commit43" "r43"

safe_switch "$URL/branches/r22branch"
merge_step "r7branch" "r43-merge"

commit_step 44 "r44" "romboooo"

safe_switch "$URL/trunk"
merge_step "r22branch" "r44-merge"

commit_step 45 "r45"

log "=== ВСЁ ЗАВЕРШЕНО УСПЕШНО ==="
log "Лог сохранён в $LOG_FILE"