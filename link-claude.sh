#!/bin/sh
# Claude Code only reads ~/.claude/skills, so link every skill from here into it
# and drop links whose skill was removed. Run after adding or removing a skill.
cd "$(dirname "$0")/skills" || exit 1
for s in */; do s=${s%/}; [ -e ~/.claude/skills/"$s" ] || ln -s ../../.agents/skills/"$s" ~/.claude/skills/"$s"; done
find ~/.claude/skills -maxdepth 1 -type l ! -exec test -e {} \; -print -delete
