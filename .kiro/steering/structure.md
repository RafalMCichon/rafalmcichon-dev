# Project Structure

## Root Files
- `_config.yml` - Jekyll configuration (site metadata, plugins, defaults)
- `index.md` - Homepage (resume content)
- `contact.md` - Contact page
- `Gemfile` - Ruby dependencies
- `.ruby-version` / `.tool-versions` - Ruby version specification
- `robots.txt` - Search engine crawling rules
- `llms.txt` - LLM-specific metadata
- `CNAME` - Custom domain configuration
- `resume-rafal-m-cichon.pdf` - Downloadable resume PDF

## Directory Structure

### `_includes/`
Reusable HTML partials for Liquid templating:
- `head.html` - Meta tags, SEO, Open Graph, structured data
- `header.html` - Site header with navigation and skip link
- `footer.html` - Site footer with copyright and links
- `schema-*.jsonld` - Structured data (JSON-LD) for SEO

### `_layouts/`
Jekyll layout templates (HTML structure wrapping content)

### `assets/`
Static assets:
- `site.css` - Main stylesheet
- `og-default.png` - Default Open Graph image
- `img/` - Profile images (multiple formats and sizes: JPG, WebP at 160px, 320px, 640px)

### `scripts/`
Shell scripts for development:
- `serve.sh` - Start Jekyll server
- `serve-livereload.sh` - Start Jekyll with LiveReload
- `self-check.sh` - Run validation checks

### `site/`
Site meta information page

## Conventions

### Content Files
- Markdown files (`.md`) with YAML front matter
- Front matter includes: `layout`, `title`, `description`, `permalink`, `image`, `robots`

### Styling
- Single CSS file (`assets/site.css`)
- System font stack for performance
- Color scheme supports light/dark mode via `color-scheme: light dark`
- Semantic HTML with accessibility features (skip links, ARIA labels, focus states)

### SEO & Metadata
- Canonical URLs configured
- Open Graph and Twitter Card meta tags
- Structured data (JSON-LD) for person, website, and articles
- Sitemap and RSS feed auto-generated via plugins

### Accessibility
- Skip to main content link
- Semantic HTML elements
- ARIA labels and `aria-current` for navigation
- Focus-visible styles for keyboard navigation
- Responsive images with proper alt text
