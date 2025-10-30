# Aliasgo: Bash Alias Manager

Aliasgo allows you to configure multi-level bash aliases through yaml. It reads yaml in from stdin and writes bash source code to stdout.

## Installation

```sh
go install github.com/ricky0123/aliasgo@latest
```

## Example usage

Create a file `~/.aliasgo.aliases.yml` with the following contents

```yml
# ~/.aliasgo.aliases.yml

cm: chemzoi

g:
  $: git
  s: status
  q: commit -am "$(date)" && git push
```

Then run `cat ~/.aliasgo.aliases.yml | aliasgo > ~/.aliasgo.aliases.bash` and add `source $HOME/.aliasgo.aliases.bash` to your `~/.bashrc`.
