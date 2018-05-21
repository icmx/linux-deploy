#!/usr/bin/env sh
#
# Ranger supports enhanced previews. If the option "use_preview_script"
# is set to True and this file exists, this script will be called and
# its output is displayed in ranger. ANSI color codes are supported.
#
# Please note: Ranger disables stdin here, so interactive commands won't
# work properly
#
# Exit Codes:
#
#  | N | Meaning    | Ranger Action                                                |
#  | - | ---------- | ------------------------------------------------------------ |
#  | 0 | success    | Success. Display stdout as preview                           |
#  | 1 | no preview | Failure. Display no preview at all                           |
#  | 2 | plain text | Display the plain content of the file                        |
#  | 3 | fix width  | Success. Don't reload when width changes                     |
#  | 4 | fix height | Success. Don't reload when height changes                    |
#  | 5 | fix both   | Success. Don't ever reload                                   |
#  | 6 | image      | Success. Display image $cached points to as an image preview |
#  | 7 | image      | Success. Display file directly as an image                   |

# Meaningful aliases for arguments:
path="$1"            # Full path of the selected file
width="$2"           # Width of the preview pane (number of fitting characters)
height="$3"          # Height of the preview pane (number of fitting characters)
cached="$4"          # Path that should be used to cache image previews
preview_images="$5"  # "True" if image previews are enabled, "False" otherwise.

maxln=200    # Stop after $maxln lines.  Can be used like ls | head -n $maxln

# Find out something about the file:
mimetype=$(file --mime-type -Lb "$path")
extension=$(/bin/echo "${path##*.}" | awk '{print tolower($0)}')

# Functions:
# runs a command and saves its output into $output.  Useful if you need
# the return value AND want to use the output in a pipe
try() { output=$(eval '"$@"'); }

# writes the output of the previously used "try" command
dump() { /bin/echo "$output"; }

# a common post-processing function used after most commands
trim() { head -n "$maxln"; }

format() { fmt -s -w $width; }

# case "$extension" in
#     # Archive extensions:
#     a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|\
#     rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)
#         try als "$path" && { dump | trim; exit 0; }
#         try acat "$path" && { dump | trim; exit 3; }
#         try bsdtar -lf "$path" && { dump | trim; exit 0; }
#         exit 1;;
#     rar)
#         # avoid password prompt by providing empty password
#         try unrar -p- lt "$path" && { dump | trim; exit 0; } || exit 1;;
#     7z)
#         # avoid password prompt by providing empty password
#         try 7z -p l "$path" && { dump | trim; exit 0; } || exit 1;;
#     # PDF documents:
#     pdf)
#         try pdftotext -l 10 -nopgbrk -q "$path" - && \
#             { dump | trim | fmt -s -w $width; exit 0; } || exit 1;;
#     # ODT Files
#     odt|ods|odp|sxw)
#         try odt2txt "$path" && { dump | trim; exit 5; } || exit 1;;
#     # HTML Pages:
#     htm|html|xhtml)
#         try w3m    -dump "$path" && { dump | trim | fmt -s -w $width; exit 4; }
#         try lynx   -dump "$path" && { dump | trim | fmt -s -w $width; exit 4; }
#         try elinks -dump "$path" && { dump | trim | fmt -s -w $width; exit 4; }
#         ;; # fall back to highlight/cat if the text browsers fail
# esac


case "$mimetype" in
    application/x-bittorrent) transmission-show "$path" && exit 0;;
    text/*  )                 head  -n "$maxln" "$path" | format && exit 0;;
    */xml   )                 head  -n "$maxln" "$path" | format && exit 0;;
    image/* )                 exiftool "$path" | format && exit 0;;
    audio/* )                 exiftool "$path" | format && exit 0;;
    video/* )                 exiftool "$path" | format && exit 0;;
esac

exit 1
