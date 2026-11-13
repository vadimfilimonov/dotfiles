# macOS setup

Install command-line tools and macOS applications using [mise](https://mise.jdx.dev/)'s `bootstrap` command.

## Requirements

- **macOS on Apple Silicon (arm64)**. mise's built-in `brew:` formula manager does not support Intel Macs.
- Git and curl. On macOS, install the Xcode Command Line Tools (`xcode-select --install`) if Git is missing.
- A current mise release with `mise bootstrap` support.

## Setup

Install mise (skip this step if it is already installed):

```sh
curl -fsSL https://mise.run | sh
```

Clone the repository and review the configuration:

```sh
git clone https://github.com/vadimfilimonov/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
cat mise.toml
```

Trust the reviewed configuration, preview the changes, and apply them:

```sh
~/.local/bin/mise trust
~/.local/bin/mise bootstrap --dry-run
~/.local/bin/mise bootstrap
```

Check the installed packages:

```sh
~/.local/bin/mise bootstrap packages status
```

## Updating

```sh
cd ~/.dotfiles
git pull --ff-only
~/.local/bin/mise bootstrap --dry-run
~/.local/bin/mise bootstrap
```

## Notes

- `mise.toml` is the source of truth for **8 CLI tools** and **6 desktop applications**.
- Packages are installed machine-wide, not per project; the configuration does not pin exact versions.
- For existing applications, `adopt = true` attempts to preserve and adopt an identical app bundle rather than replace it. Adoption may fail if the installed app differs from the downloaded version.
- The previous Homebrew-based setup is available at [commit `0584912c`](https://github.com/vadimfilimonov/dotfiles/tree/0584912c5eb0b0711293bb709aba8ea6075d75e6).
