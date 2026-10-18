# sheetmusic

LilyPond sources and rendered scores by Rey Abolofia.

Browse the scores at <https://purple4reina.github.io/sheetmusic/>. The site is
a plain directory listing, rebuilt by GitHub Actions on every push to `master`
(`scripts/build_site.py`). Everything is discovered automatically; `.ly` source
files and dotfiles are left out of the published site.

`teaching/` holds the sources for the PDFs used on the student site,
[MusicBook](https://github.com/purple4reina/MusicBook). Copies of those PDFs
live in that repo's `src/` directory.

## Compiling

```bash
docker run -e GIT_SHA=$(git rev-parse --short HEAD) -v $(pwd):/app -w /app \
  jeandeaual/lilypond:latest lilypond file.ly
```

## Previewing the site locally

```bash
python3 scripts/build_site.py && python3 -m http.server -d _site
```
