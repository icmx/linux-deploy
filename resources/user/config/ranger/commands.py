from os                  import path
from ranger.api.commands import Command
from ranger.core.loader  import CommandLoader

"""
These two commands are based on old ArchWiki snippets from

    <wiki.archlinux.org/index.php/ranger#Archives>

which is likely comes from <github.com/ranger/ranger/issues/295> (post
by someone named arkhan)

So-called "atool" works very bad on Void Linux (and it's not maintainded
since 2012), so I replaced it by "7z". Despite the name, 7z is able to
compress to multiple formats, such as ZIP and TAR.

I'm not a Python master, so this code may looks ugly to you — however it
works, at least for basic usage.
"""

class compress(Command):
    def execute(self):
        cwd = self.fm.thisdir
        marked_files = cwd.get_selection()

        if not marked_files:
            return

        def refresh(_):
            cwd = self.fm.get_directory(original_path)
            cwd.load_content()

        original_path = cwd.path
        parts = self.line.split()
        au_flags = parts[1:]
        files = [path.relpath(f.path, cwd.path) for f in marked_files]

        descr = "compressing files in: " + path.basename(parts[1])
        obj = CommandLoader(
            args=["7z", "a"] + au_flags + files,
            descr=descr
        )

        obj.signal_bind("after", refresh)
        self.fm.loader.add(obj)

    # This part looks broken and I'm unable to fix it.
    # def tab(self):
    #     extensions = [".zip", ".tar.gz", ".7z", ".rar"]
    #     return [
    #         "compress " +
    #         path.basename(self.fm.thisdir.path) +
    #         extension for extension in extensions
    #     ]

class extract(Command):
    def execute(self):
        cwd = self.fm.thisdir
        marked_files = cwd.get_selection()

        if not marked_files:
            return

        def refresh(_):
            cwd = self.fm.get_directory(original_path)
            cwd.load_content()

        original_path = cwd.path
        parts = self.line.split()
        au_flags = parts[1:]
        files = [path.relpath(f.path, cwd.path) for f in marked_files]

        descr = "extracting files in: " + path.basename(parts[0])
        obj = CommandLoader(
            args=["7z", "x"] + au_flags + files,
            descr=descr
        )

        obj.signal_bind("after", refresh)
        self.fm.loader.add(obj)
