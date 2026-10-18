#!/usr/bin/env python3
"""Build _site/: a copy of the repo (minus .ly sources and dotfiles) with an
index.html in every directory so GitHub Pages can be browsed like a file tree."""
import html
import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
OUT = ROOT / "_site"
SKIP_DIRS = {"scripts", "_site"}
SKIP_SUFFIXES = {".ly"}

PAGE = """<!doctype html>
<html lang="en"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>{title}</title>
<style>
body{{font:16px/1.6 system-ui,sans-serif;max-width:46rem;margin:2rem auto;padding:0 1rem;color:#222}}
a{{color:#6b2fa0;text-decoration:none}}a:hover{{text-decoration:underline}}
ul{{list-style:none;padding:0}}li{{padding:.1rem 0}}
@media(prefers-color-scheme:dark){{body{{background:#161320;color:#ddd}}a{{color:#b98cf0}}}}
</style></head><body>
<h1>{title}</h1>
<ul>
{items}
</ul></body></html>
"""


def ignored(path: Path) -> bool:
    return path.name.startswith(".") or path.suffix in SKIP_SUFFIXES


def copy_tree(src: Path, dst: Path) -> None:
    dst.mkdir(parents=True, exist_ok=True)
    for entry in sorted(src.iterdir()):
        if ignored(entry):
            continue
        if entry.is_dir():
            if entry.name not in SKIP_DIRS:
                copy_tree(entry, dst / entry.name)
        else:
            shutil.copy2(entry, dst / entry.name)


def write_indexes(directory: Path, rel: str) -> None:
    entries = sorted(directory.iterdir(), key=lambda p: (not p.is_dir(), p.name.lower()))
    for entry in entries:
        if entry.is_dir():
            write_indexes(entry, f"{rel}{entry.name}/")
    index = directory / "index.html"
    if index.exists():
        return
    items = [] if directory == OUT else ['<li><a href="../">../</a></li>']
    for entry in entries:
        name = html.escape(entry.name + ("/" if entry.is_dir() else ""))
        href = html.escape(entry.name.replace("%", "%25").replace("#", "%23") + ("/" if entry.is_dir() else ""))
        items.append(f'<li><a href="{href}">{name}</a></li>')
    title = html.escape("sheetmusic /" + rel)
    index.write_text(PAGE.format(title=title, items="\n".join(items)))


def main() -> int:
    if OUT.exists():
        shutil.rmtree(OUT)
    copy_tree(ROOT, OUT)
    (OUT / ".nojekyll").touch()
    write_indexes(OUT, "")
    return 0


if __name__ == "__main__":
    sys.exit(main())
