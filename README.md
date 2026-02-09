# rafalmcichon.dev (resume)

This is a resume-only Jekyll site. For projects/notes/log, see https://rafalmcichon.com/.

## Local preview
- optional: `brew bundle`
- `bundle install`
- `bundle exec jekyll serve --livereload`

Self-check:
- `chmod +x scripts/self-check.sh`
- `./scripts/self-check.sh`
## Ports
- Default: http://127.0.0.1:4001/
- LiveReload port: 35730
- Override (example): `PORT=4002 ./scripts/serve.sh`
- Override LiveReload: `PORT=4002 LR_PORT=35731 ./scripts/serve-livereload.sh`

## Ruby version
This repo includes `.ruby-version` (and `.tool-versions`) as a hint for Ruby managers (rbenv/chruby/asdf/mise).
If you use Homebrew `ruby@3.3`, make sure your PATH points to it, then run `bundle install`.
