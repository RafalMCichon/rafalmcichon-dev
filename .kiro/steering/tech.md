# Technology Stack

## Framework
- **Jekyll** - Static site generator (GitHub Pages compatible)
- Ruby 3.3.10

## Dependencies
- `github-pages` gem - GitHub Pages Jekyll plugins bundle
- `webrick` ~1.9 - Ruby web server
- Jekyll plugins:
  - `jekyll-sitemap` - Automatic sitemap generation
  - `jekyll-feed` - RSS feed generation

## Build System
Jekyll processes Markdown files with YAML front matter into static HTML using Liquid templating.

## Common Commands

### Initial Setup
```bash
# Optional: Install system dependencies
brew bundle

# Install Ruby gems
bundle install
```

### Development Server
```bash
# Basic server (port 4001)
bundle exec jekyll serve

# With LiveReload (recommended)
bundle exec jekyll serve --livereload

# Using convenience scripts
./scripts/serve.sh                    # Basic
./scripts/serve-livereload.sh         # With LiveReload
```

### Custom Ports
```bash
# Override default port (4001)
PORT=4002 ./scripts/serve.sh

# Override both server and LiveReload ports
PORT=4002 LR_PORT=35731 ./scripts/serve-livereload.sh
```

### Self-Check
```bash
chmod +x scripts/self-check.sh
./scripts/self-check.sh
```

## Default Ports
- Server: `http://127.0.0.1:4001/`
- LiveReload: `35730`

## Ruby Version Management
The repo includes `.ruby-version` and `.tool-versions` files for Ruby version managers (rbenv, chruby, asdf, mise).

If using Homebrew's `ruby@3.3`, ensure it's in your PATH before running `bundle install`.
