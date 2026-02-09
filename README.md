# rafalmcichon.dev (resume)

Resume-only Jekyll site for Rafal M Cichon. For projects/notes/log, see https://rafalmcichon.com/.

## Tech Stack
- **Jekyll** - Static site generator (GitHub Pages compatible)
- **Ruby** ~> 3.3.0
- **Deployment** - GitHub Actions → GitHub Pages
- **Domain** - rafalmcichon.dev

## Local Development

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
./scripts/serve.sh

# With LiveReload (recommended)
./scripts/serve-livereload.sh

# Or directly with bundle
bundle exec jekyll serve --livereload
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
- Server: http://127.0.0.1:4001/
- LiveReload: 35730

## Deployment

Site deploys automatically via GitHub Actions on push to `main` branch.

**Workflow:** `.github/workflows/jekyll.yml`
- Builds with Ruby 3.3.x on Ubuntu
- Deploys to GitHub Pages
- Available at https://rafalmcichon.dev

**Manual deployment trigger:** GitHub Actions tab → "Deploy Jekyll site to Pages" → Run workflow

## Ruby Version Management

This repo includes `.ruby-version` and `.tool-versions` files for Ruby version managers (rbenv, chruby, asdf, mise).

If using Homebrew's `ruby@3.3`, ensure it's in your PATH before running `bundle install`.

## Project Structure

- `index.md` - Homepage (resume content)
- `contact.md` - Contact page
- `_includes/` - Reusable HTML partials
- `_layouts/` - Jekyll layout templates
- `assets/` - CSS, images, Open Graph assets
- `scripts/` - Development helper scripts
