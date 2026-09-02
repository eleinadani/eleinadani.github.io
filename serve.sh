#!/usr/bin/env bash
# Local preview for eleinadani.github.io
#
#   ./serve.sh            build with Jekyll and serve on http://localhost:4000
#   ./serve.sh 8080       same, on a different port
#   ./serve.sh --static   serve the last pre-built _site/ without Jekyll
#                         (stale content - only for a quick look)
#
# This file is a dev helper; it is not part of the published site.

set -u
cd "$(dirname "$0")"

STATIC=0
PORT=4000
for arg in "$@"; do
  case "$arg" in
    --static) STATIC=1 ;;
    ''|*[!0-9]*) echo "Unknown argument: $arg" >&2; exit 2 ;;
    *) PORT="$arg" ;;
  esac
done

banner() {
  echo
  echo "  -> $1"
  echo "  -> open:  http://localhost:${PORT}/"
  if [ "$STATIC" -eq 0 ]; then
    echo "  -> pages:  /research  /teaching  /projects  /contact"
  fi
  echo "  -> stop:  Ctrl-C"
  echo
}

# --- is the last build older than the sources? ----------------------------
# Serving a stale _site/ silently is the single most confusing failure mode
# here: the browser shows an old version of the site and nothing says so.
stale_files() {
  [ -f _site/index.html ] || return 0
  find . -type f \( -name '*.md' -o -name '*.scss' -o -name '*.html' \
                  -o -name '*.yml' -o -name '*.png' \) \
       -not -path './_site/*' -not -path './.git/*' \
       -not -path './.jekyll-cache/*' -newer _site/index.html -print 2>/dev/null
}

# --- explicit static mode -------------------------------------------------
if [ "$STATIC" -eq 1 ]; then
  if [ ! -d _site ]; then
    echo "No _site/ directory to serve. Run ./serve.sh (without --static) first." >&2
    exit 1
  fi
  echo
  echo "  !! STATIC MODE: serving the pre-built _site/ folder as-is."
  echo "  !! Last built: $(date -r _site/index.html '+%d %b %Y %H:%M' 2>/dev/null || echo 'unknown')."
  n_stale=$(stale_files | wc -l | tr -d ' ')
  if [ "$n_stale" -gt 0 ]; then
    echo
    echo "  !! WARNING: $n_stale source file(s) are NEWER than this build."
    echo "  !! You will be looking at an OUT-OF-DATE version of the site."
    echo "  !! Newest changes not included:"
    stale_files | head -8 | sed 's/^/  !!     /'
    echo "  !! Run ./serve.sh without --static to build them."
    echo
  fi
  echo "  !! Extensionless links (e.g. /research) will 404 in this mode."
  banner "python3 -m http.server (static, from _site/)"
  exec python3 -m http.server "$PORT" --directory _site
fi

# --- is something already sitting on the port? ----------------------------
# If it is, jekyll serve would fail to bind and you would keep seeing
# whatever that other process serves - very likely an old build.
if command -v lsof >/dev/null 2>&1; then
  holder=$(lsof -nP -iTCP:"$PORT" -sTCP:LISTEN 2>/dev/null | awk 'NR==2 {print $1" (pid "$2")"}')
  if [ -n "$holder" ]; then
    echo
    echo "  Port ${PORT} is already in use by ${holder}."
    echo "  That process - not this script - is what your browser is showing."
    echo
    echo "  Stop it:      kill $(lsof -nP -tiTCP:"$PORT" -sTCP:LISTEN 2>/dev/null | tr '\n' ' ')"
    echo "  Or use another port:  ./serve.sh 4001"
    echo
    exit 1
  fi
fi

# --- find Jekyll ----------------------------------------------------------
JEKYLL=""
USE_BUNDLER=0

if [ -f Gemfile ] && command -v bundle >/dev/null 2>&1; then
  if bundle check >/dev/null 2>&1; then
    USE_BUNDLER=1
  else
    echo "  -> installing gems from Gemfile (first run only)..."
    if bundle install; then
      USE_BUNDLER=1
    fi
  fi
fi

if [ "$USE_BUNDLER" -eq 0 ]; then
  if command -v jekyll >/dev/null 2>&1; then
    JEKYLL="$(command -v jekyll)"
  else
    for d in "$HOME"/.gem/ruby/*/bin "$HOME"/.local/share/gem/ruby/*/bin; do
      [ -x "$d/jekyll" ] && JEKYLL="$d/jekyll" && break
    done
  fi
fi

# --- no Jekyll: explain, do not pretend ----------------------------------
if [ "$USE_BUNDLER" -eq 0 ] && [ -z "$JEKYLL" ]; then
  RUBY_V="$(ruby -e 'print RUBY_VERSION' 2>/dev/null || echo none)"
  echo
  echo "  Jekyll is not installed, so the site cannot be built."
  echo "  (Detected Ruby: ${RUBY_V})"
  echo
  case "$RUBY_V" in
    none)
      echo "  Install Ruby first:   brew install ruby" ;;
    1.*|2.[0-6]*)
      echo "  Your Ruby is too old for Jekyll 4 (needs >= 2.7), and it is the"
      echo "  system Ruby, which you should not install gems into. Do this:"
      echo
      echo "    brew install ruby"
      echo "    echo 'export PATH=\"\$(brew --prefix ruby)/bin:\$PATH\"' >> ~/.zshrc"
      echo "    exec zsh"
      echo "    gem install bundler" ;;
    *)
      echo "  Install Bundler and let it handle the rest:"
      echo
      echo "    gem install bundler        # add --user-install if you get a permissions error" ;;
  esac
  echo
  echo "  Then run ./serve.sh again - it will read the Gemfile and install Jekyll."
  echo
  echo "  To look at the old pre-built site in the meantime:  ./serve.sh --static"
  echo
  exit 1
fi

# --- serve ----------------------------------------------------------------
if [ "$USE_BUNDLER" -eq 1 ]; then
  banner "bundle exec jekyll serve - rebuilds on save"
  exec bundle exec jekyll serve --port "$PORT" --livereload
else
  banner "jekyll serve - rebuilds on save"
  exec "$JEKYLL" serve --port "$PORT" --livereload
fi
