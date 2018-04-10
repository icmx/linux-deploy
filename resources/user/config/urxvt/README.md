# URxvt Perl Extensions

Personal URxvt extensions written in Perl. These extensions aren't created by me. You can see the authors names, credits and other details in extensions' top comment lines.

# Installation

Each extension is placed in separate file which name defines the extension name. All of extension files are meant to be in one of following directories:

  - `~/.urxvt/ext`, if you want to use it for current user only
  - `/usr/lib/urxvt/perl/`, for system-wide usage

Any other custom directories may be defined with X resources' key `urxvt.perl-lib` but I personally don't recommend this way since it's doesn't recognize `~/` shortcut or `$HOME` and other variables. Relative paths (without leading slash) are recognizeable, but unfortunately relative to ANY current directory, so if you run new URxvt from e.g. `~/Documents`, then it will relatively search the extensions in e.g. `~/Documents/extensions` which is not good enough.

Alternatively, you can define custom directory with special environment variable `$URXVT_PERL_LIB`, like so:

```sh
  export URXVT_PERL_LIB="$HOME/.config/urxvt/extensions"
```

Following this way, you can define absolutely any directory you like.

Also, all the ways supports multiple directories: in such case use colon `:` to separate the paths, like so:

```Xresources
  urxvt.perl-lib: /usr/lib/urxvt/perl:/home/user/foo/bar
```

# Usage

To enable installed extension, add the following key into your X resources file:

```Xresources
  urxvt.perl-ext:
```

Then list all the file (= extension) names, separated by commas, like so:

```
  urxvt.perl-ext: foo,bar,baz
```

Re-merge X resources with `xrdb -merge ...` to apply changes then.

# See also

Read `man urxvt`, sections `5` and `7`.
