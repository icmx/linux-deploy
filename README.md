# Linux Deploy

resources, scripts and other stuff for my Linux systems. Works best with [Void Linux](https://www.voidlinux.eu/).

## Usage

For automated deployment you need clean fresh-installed Void Linux system first. Once installed, obtain git and cURL packages:

```sh
  xbps-install -Su git curl
```

Next, clone this repository and run main installer as user:

```sh
  git clone git://github.com/icmx/linux-deploy.git/
  cd linux-deploy
  # [ ... ] modify it as you like
  bash setup
```

Alternatively, you can look into [`resources`](resources) directory and grab some dotfiles manually.

Note that some of user-specific directories are made up and not officially supported by any software — e.g. Bash originally won't read the `~/.config/bash` contents. You should use symlinks or environment variables if you want to make it work.
