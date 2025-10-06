# List all available commands
default:
    @just --list

alias c := compile
# Compile main file
compile:
    mkdir -p target
    typst compile --font-path=assets/fonts main.typ target/main.pdf

alias w := watch
# Watch main file
watch:
    mkdir -p target
    typst watch --font-path=assets/fonts main.typ target/main.pdf
