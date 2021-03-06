# Linux Deploy

Resources, scripts and other stuff for my Linux systems. Works best with [Void Linux](https://www.voidlinux.eu/).

## Usage

For automated deployment you need clean fresh-installed Void Linux system first. Once installed, obtain git package:

```sh
xbps-install -Su git
```

Next, clone this repository and run main installer as user:

```sh
git clone git://github.com/icmx/linux-deploy.git/
cd linux-deploy
# [ ... ] modify it as you like
bash init setup
```

Alternatively, you can look into [*resources*](resources) directory and grab some dotfiles manually.

## Contents

  - **Resources** — configuration, executables and similar stuff
    - [System-wide](resources/root) — for system root directory as in [FHS](//en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard)
    - [User-specific](resources/user) — for current user as in [XDG](//standards.freedesktop.org/basedir-spec/latest/)+FHS
  - **Scripts** — scripts fot semi-automatic per-user system setup.

Note that some of user-specific configuration directories are made up and not officially supported by any software — e.g. Bash originally won't read the *~/.config/bash* contents. You should use symlinks or environment variables if you want to make it work.

## TODO

  - [x] Fix system shortcuts (like hdq)
  - [x] Add one-char symlinks (x for startx, e for ranger and such)
  - [x] ~~Add runit for non-root user (see smarden.org/runit/faq.html)~~ — overkill for user
  - [x] ~~Add *prefs.js* Firefox preferences~~
  - [x] Replace *prefs.js* by *user.js*
  - [ ] Clean *ranger* settings
  - [ ] Add *lm_sensors* configuration for laptop
  - [ ] Remove *virt-manager*
  - [ ] Clean system and user script shortcuts
  - [ ] Add remote setup mode (to install by `curl | bash`)
  - [ ] Add full system setup (from live iso)
